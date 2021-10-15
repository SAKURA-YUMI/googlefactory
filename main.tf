provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "yMPu:AP-CHUNCHEON-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaagfg6kaw4tl575n5stxs53lpwtcff5y5i22zu7fuyp2emzntc4wia"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.ap-chuncheon-1.aaaaaaaaxs4twzha7k7xpnszqetblsl4nfnnwimmevsgnmgwnfaheqvanl4a"
	}
	display_name = "instance-20211015-1408"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCat9U+US65aHO++hfVwywglnypItMNolnqVRgPY3rOQCCOH71wA2XbidQ7RS+BrMg2h10FyMc2rois05NpCkrjQXSIiweeaiIUYvst4sfYiVfBFwU3vxZJuSQDXRtSg4xbsp4LeJEz21u204V4OtXjWDjSDJOnUwCzqgxAB5xelCW6gtAEYskt0WHqBUOiKMnuHfopGu4hhPvQDchCUESvy9ArXXpjGfg7PaDguaKU+/WV/NoRLCWxjoRoKzRziMoOHbWF3DsfIgpD0X9pmgwoXfpLkSvdFOd4ywPY65dPIUugK/q1ZWQhLLfpu4eSfp0O/hZ4X4QI6savK1qVbE+N ssh-key-2021-10-15"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		baseline_ocpu_utilization = "BASELINE_1_1"
		memory_in_gbs = "24"
		ocpus = "4"
	}
	source_details {
		boot_volume_size_in_gbs = "100"
		source_id = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaa4t4ex5txa43g7skrjhrap6omqecn2re2e2thjlgzxp4dtb5mmaxa"
		source_type = "image"
	}
}
