require "time"

# Liquid filter:  "assets/pdf/cv.pdf" | file_modified: "%B %Y"
# Returns the last-modified date of a file relative to the site source.
# Prefers `git log -1` (so the timestamp reflects the actual commit that
# touched the file, not the build/checkout time), with File.mtime as a
# fallback for files that aren't tracked yet.
module FileModifiedFilter
  def file_modified(path, format = "%B %Y")
    site_source = @context.registers[:site].source
    full_path = File.join(site_source, path)
    return "" unless File.exist?(full_path)

    git_iso = `git -C "#{site_source}" log -1 --format=%cI -- "#{path}" 2>/dev/null`.strip
    time = git_iso.empty? ? File.mtime(full_path) : Time.parse(git_iso)
    time.strftime(format)
  end
end

Liquid::Template.register_filter(FileModifiedFilter)
