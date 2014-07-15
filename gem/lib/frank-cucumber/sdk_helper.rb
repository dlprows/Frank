require 'sim_launcher'

module Frank module CLI

	class SdkHelper

		def show_device_types
			devices = SimLauncher::Simulator.new.show_device_types
			array = devices.lines.map { |line|
				line.slice! 'com.apple.CoreSimulator.SimDeviceType.'
				line.strip!
			}

			puts array
		end

		def show_skds
			puts SimLauncher::Simulator.new.showsdks
		end
	end

end end