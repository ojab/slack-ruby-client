# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Mpim
          #
          # Closes a multiparty direct message channel.
          #
          # @option options [channel] :channel
          #   MPIM to close.
          # @see https://api.slack.com/methods/mpim.close
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/mpim/mpim.close.json
          def mpim_close(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: conversations_id(options)['channel']['id']) if options[:channel]
            logger.warn('mpim.close: This method is deprecated. It will stop functioning in February 2021 and will not work with newly created apps after June 10th, 2020. Alternative methods: conversations.close.')
            post('mpim.close', options)
          end

          #
          # Fetches history of messages and events from a multiparty direct message.
          #
          # @option options [channel] :channel
          #   Multiparty direct message to fetch history for.
          # @option options [Object] :inclusive
          #   Include messages with latest or oldest timestamp in results.
          # @option options [timestamp] :latest
          #   End of time range of messages to include in results.
          # @option options [timestamp] :oldest
          #   Start of time range of messages to include in results.
          # @option options [Object] :unreads
          #   Include unread_count_display in the output?.
          # @see https://api.slack.com/methods/mpim.history
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/mpim/mpim.history.json
          def mpim_history(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: conversations_id(options)['channel']['id']) if options[:channel]
            logger.warn('mpim.history: This method is deprecated. It will stop functioning in February 2021 and will not work with newly created apps after June 10th, 2020. Alternative methods: conversations.history.')
            post('mpim.history', options)
          end

          #
          # Lists multiparty direct message channels for the calling user.
          #
          # @option options [Object] :cursor
          #   Parameter for pagination. Set cursor equal to the next_cursor attribute returned by the previous request's response_metadata. This parameter is optional, but pagination is mandatory: the default value simply fetches the first "page" of the collection. See pagination for more details.
          # @option options [Object] :limit
          #   The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached.
          # @see https://api.slack.com/methods/mpim.list
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/mpim/mpim.list.json
          def mpim_list(options = {})
            logger.warn('mpim.list: This method is deprecated. It will stop functioning in February 2021 and will not work with newly created apps after June 10th, 2020. Alternative methods: conversations.list, users.conversations.')
            if block_given?
              Pagination::Cursor.new(self, :mpim_list, options).each do |page|
                yield page
              end
            else
              post('mpim.list', options)
            end
          end

          #
          # Sets the read cursor in a multiparty direct message channel.
          #
          # @option options [channel] :channel
          #   multiparty direct message channel to set reading cursor in.
          # @option options [timestamp] :ts
          #   Timestamp of the most recently seen message.
          # @see https://api.slack.com/methods/mpim.mark
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/mpim/mpim.mark.json
          def mpim_mark(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :ts missing') if options[:ts].nil?
            options = options.merge(channel: conversations_id(options)['channel']['id']) if options[:channel]
            logger.warn('mpim.mark: This method is deprecated. It will stop functioning in February 2021 and will not work with newly created apps after June 10th, 2020. Alternative methods: conversations.mark.')
            post('mpim.mark', options)
          end

          #
          # This method opens a multiparty direct message.
          #
          # @option options [Object] :users
          #   Comma separated lists of users.  The ordering of the users is preserved whenever a MPIM group is returned.
          # @see https://api.slack.com/methods/mpim.open
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/mpim/mpim.open.json
          def mpim_open(options = {})
            throw ArgumentError.new('Required arguments :users missing') if options[:users].nil?
            logger.warn('mpim.open: This method is deprecated. It will stop functioning in February 2021 and will not work with newly created apps after June 10th, 2020. Alternative methods: conversations.open.')
            post('mpim.open', options)
          end

          #
          # Retrieve a thread of messages posted to a direct message conversation from a multiparty direct message.
          #
          # @option options [channel] :channel
          #   Multiparty direct message channel to fetch thread from.
          # @option options [Object] :thread_ts
          #   Unique identifier of a thread's parent message.
          # @see https://api.slack.com/methods/mpim.replies
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/mpim/mpim.replies.json
          def mpim_replies(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :thread_ts missing') if options[:thread_ts].nil?
            options = options.merge(channel: conversations_id(options)['channel']['id']) if options[:channel]
            logger.warn('mpim.replies: This method is deprecated. It will stop functioning in February 2021 and will not work with newly created apps after June 10th, 2020. Alternative methods: conversations.replies.')
            post('mpim.replies', options)
          end
        end
      end
    end
  end
end
