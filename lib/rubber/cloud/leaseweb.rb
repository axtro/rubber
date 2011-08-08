require 'rubygems'

module Rubber
  module Cloud

    class Leaseweb < Base

      def initialize(env, capistrano)
        super(env, capistrano)
      end

      def create_instance(ami, ami_type, security_groups, availability_zone)
        raise "create_instance not supported"
      end

      def create_spot_instance_request(spot_price, ami, ami_type, security_groups, availability_zone)
        raise "create_spot_instance_request not supported"
      end

      def _instance_descriptor(instance_data)
        instance = {}
        instance[:id] = instance_data.instance_id
        instance[:external_host] = instance_data.external_host
        instance[:external_ip] = instance_data.external_ip
        instance[:internal_host] = instance_data.internal_host
        instance[:internal_ip] = instance_data.internal_ip
        instance[:state] = "running"
        instance[:zone] = "holland"
        instance[:platform] = instance_data.platform || 'linux'
        instance[:root_device_type] = ""
        return instance
      end

      def describe_instances(instance_id=nil)
        instances = []

        instances_data = YAML.load_file("config/rubber/instance-#{RUBBER_ENV}.yml")
        instances_data = instances_data.select{|id| id.kind_of?(Rubber::Configuration::InstanceItem)}
        debugger

        if instance_id
          instance_data  = instances_data.find{|id|id.instance_id == instance_id.to_s}
          instances << _instance_descriptor(instance_data)
        else
          instances_data.each do |instance_data|
            instances << _instance_descriptor(instance_data)
          end
        end

        return instances
      end

      def destroy_instance(instance_id)
        raise "create_spot_instance_request not supported"
      end

      def reboot_instance(instance_id)
        raise "create_spot_instance_request not supported"
      end

      def stop_instance(instance_id)
        raise "create_spot_instance_request not supported"
      end

      def start_instance(instance_id)
        raise "create_spot_instance_request not supported"
      end

      def describe_availability_zones
        zones = ["holland"]
        return zones
      end

      def create_security_group(group_name, group_description)
        raise "create_spot_instance_request not supported"
      end

      def describe_security_groups(group_name=nil)
        groups = []
        return groups
      end

      def add_security_group_rule(group_name, protocol, from_port, to_port, source)
        raise "create_spot_instance_request not supported"
      end

      def remove_security_group_rule(group_name, protocol, from_port, to_port, source)
        raise "create_spot_instance_request not supported"
      end

      def destroy_security_group(group_name)
        raise "create_spot_instance_request not supported"
      end

      def create_static_ip
        raise "create_spot_instance_request not supported"
      end

      def attach_static_ip(ip, instance_id)
        raise "create_spot_instance_request not supported"
      end

      def detach_static_ip(ip)
        raise "create_spot_instance_request not supported"
      end

      def describe_static_ips(ip=nil)
        ips = []
        return ips
      end

      def destroy_static_ip(ip)
        raise "create_spot_instance_request not supported"
      end

      def create_volume(size, zone, base_volume_id = nil)
        raise "create_spot_instance_request not supported"
      end

      def attach_volume(volume_id, instance_id, device)
        raise "create_spot_instance_request not supported"
      end

      def detach_volume(volume_id)
        raise "create_spot_instance_request not supported"
      end

      def describe_volumes(volume_id=nil)
        volumes = []
        return volumes
      end

      def destroy_volume(volume_id)
        raise " not supported"
      end

      def create_image(image_name)
        raise " not supported"
      end

      def describe_images(image_id=nil)
        images = []
        return images
      end

      def destroy_image(image_id)
        raise " not supported"
      end

      def destroy_spot_instance_request(request_id)
        raise " not supported"
      end

      def describe_load_balancers(name=nil)
        lbs = []
        return lbs
      end

      def describe_spot_instance_requests(request_id=nil)
        requests = []
        return requests
      end

      # resource_id is any Amazon resource ID (e.g., instance ID or volume ID)
      # tags is a hash of tag_name => tag_value pairs
      def create_tags(resource_id, tags)
        raise " not supported"
      end

    end

  end
end
