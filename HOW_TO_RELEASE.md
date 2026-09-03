# How to release

Consumers integrate this fork through the Swift Package Manager and pin a tag, so a
release is a tag plus a GitHub release — there are no artifacts to build or upload.

1. Add a section for the new version at the top of [CHANGELOG.md](CHANGELOG.md).
2. Open a pull request with that change and merge it once the build workflow is green.
3. Tag the merge commit with the bare version number — `6.4.0`, not `v6.4.0`, to match
   the existing tags — and push the tag.
4. Create a GitHub release from that tag, using the changelog section as its notes.

Raising the required RxSwift range breaks anyone pinned to an older RxSwift: the manifest
allows one minor at a time, and Swift Package Manager resolves a single RxSwift across the
whole consumer graph, so both cannot be satisfied. Decide the version number with that in
mind rather than by habit, and say so in the changelog.
