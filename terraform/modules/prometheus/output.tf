output "cloudinit-script" {
  value = "${data.template_file.user_data_script.rendered}"
}

output "public_ip_address" {
  value = "${aws_instance.prometheus.*.public_ip}"
}

output "prometheus_instance_id" {
  value = "${aws_instance.prometheus.*.id}"
}

output "prometheus_public_dns" {
  value = "${aws_instance.prometheus.*.public_dns}"
}

output "s3_config_bucket" {
  value = "${aws_s3_bucket.prometheus_config.bucket}"
}
