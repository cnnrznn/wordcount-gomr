# Wordcount

This respository is an example for how code should be structured with GoMR.
The example here is the canonical wordcount.

## Directories

- `/` - Stores the driver program, `skaffold.yaml`,  `Makefile`
- `jobs/` - Stores all mr jobs and their Dockerfiles

## Workflow

1. Write MR Jobs using the `github.com/cnnrznn/gomr` package. Create a type
   that satisfies the `Job` interface and call a 3-line main function to
   instantiate the struct and call `gomr.RunDistributed()`.
2. Create Dockerfiles for each of these jobs so they may be built into
   containers.
3. Use [skaffold](https://skaffold.dev/) and a `Makefile` to compile each of
   these jobs into containers.
4. Create a binary to call GoMR's driver library:
   `github.com/cnnrznn/gomr/driver` for running and chaining jobs on Kubernetes.