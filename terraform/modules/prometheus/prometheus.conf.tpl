global:
  scrape_interval:     30s
  evaluation_interval: 30s

scrape_configs:
  - job_name: 'node_exporters'
    ec2_sd_configs:
    - region: "${aws_region}"
      profile: "${ec2_instance_profile}"
      port: 9100
    relabel_configs:
    - source_labels: [__meta_ec2_tag_Name]
      target_label: Prometheus
