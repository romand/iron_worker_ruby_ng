require_relative '../../feature/mono/merge_exec'

module IronWorkerNG
  module Code
    module Runtime
      module Mono
        include IronWorkerNG::Feature::Mono::MergeExec::InstanceMethods

        def runtime_run_code(local = false)
          <<RUN_CODE
mono #{File.basename(@exec.path)} "$@"
RUN_CODE
        end
      end
    end
  end
end
