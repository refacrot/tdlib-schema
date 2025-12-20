require 'dry-struct'
require 'dry-types'

module TD::Types
  include Dry.Types()

  LOOKUP_TABLE = {
      'error'                                                   => 'Error',
      'ok'                                                      => 'Ok',
      'AuthenticationCodeType'                                  => 'AuthenticationCodeType',
      'authenticationCodeTypeTelegramMessage'                   => 'AuthenticationCodeType::TelegramMessage',
      'authenticationCodeTypeSms'                               => 'AuthenticationCodeType::Sms',
      'authenticationCodeTypeSmsWord'                           => 'AuthenticationCodeType::SmsWord',
      'authenticationCodeTypeSmsPhrase'                         => 'AuthenticationCodeType::SmsPhrase',
      'authenticationCodeTypeCall'                              => 'AuthenticationCodeType::Call',
      'authenticationCodeTypeFlashCall'                         => 'AuthenticationCodeType::FlashCall',
      'authenticationCodeTypeMissedCall'                        => 'AuthenticationCodeType::MissedCall',
      'authenticationCodeTypeFragment'                          => 'AuthenticationCodeType::Fragment',
      'authenticationCodeTypeFirebaseAndroid'                   => 'AuthenticationCodeType::FirebaseAndroid',
      'authenticationCodeTypeFirebaseIos'                       => 'AuthenticationCodeType::FirebaseIos',
      'authenticationCodeInfo'                                  => 'AuthenticationCodeInfo',
      'emailAddressAuthenticationCodeInfo'                      => 'EmailAddressAuthenticationCodeInfo',
      'EmailAddressAuthentication'                              => 'EmailAddressAuthentication',
      'emailAddressAuthenticationCode'                          => 'EmailAddressAuthentication::Code',
      'emailAddressAuthenticationAppleId'                       => 'EmailAddressAuthentication::AppleId',
      'emailAddressAuthenticationGoogleId'                      => 'EmailAddressAuthentication::GoogleId',
      'EmailAddressResetState'                                  => 'EmailAddressResetState',
      'emailAddressResetStateAvailable'                         => 'EmailAddressResetState::Available',
      'emailAddressResetStatePending'                           => 'EmailAddressResetState::Pending',
      'textEntity'                                              => 'TextEntity',
      'textEntities'                                            => 'TextEntities',
      'formattedText'                                           => 'FormattedText',
      'termsOfService'                                          => 'TermsOfService',
      'passkey'                                                 => 'Passkey',
      'passkeys'                                                => 'Passkeys',
      'AuthorizationState'                                      => 'AuthorizationState',
      'authorizationStateWaitTdlibParameters'                   => 'AuthorizationState::WaitTdlibParameters',
      'authorizationStateWaitPhoneNumber'                       => 'AuthorizationState::WaitPhoneNumber',
      'authorizationStateWaitPremiumPurchase'                   => 'AuthorizationState::WaitPremiumPurchase',
      'authorizationStateWaitEmailAddress'                      => 'AuthorizationState::WaitEmailAddress',
      'authorizationStateWaitEmailCode'                         => 'AuthorizationState::WaitEmailCode',
      'authorizationStateWaitCode'                              => 'AuthorizationState::WaitCode',
      'authorizationStateWaitOtherDeviceConfirmation'           => 'AuthorizationState::WaitOtherDeviceConfirmation',
      'authorizationStateWaitRegistration'                      => 'AuthorizationState::WaitRegistration',
      'authorizationStateWaitPassword'                          => 'AuthorizationState::WaitPassword',
      'authorizationStateReady'                                 => 'AuthorizationState::Ready',
      'authorizationStateLoggingOut'                            => 'AuthorizationState::LoggingOut',
      'authorizationStateClosing'                               => 'AuthorizationState::Closing',
      'authorizationStateClosed'                                => 'AuthorizationState::Closed',
      'FirebaseDeviceVerificationParameters'                    => 'FirebaseDeviceVerificationParameters',
      'firebaseDeviceVerificationParametersSafetyNet'           => 'FirebaseDeviceVerificationParameters::SafetyNet',
      'firebaseDeviceVerificationParametersPlayIntegrity'       => 'FirebaseDeviceVerificationParameters::PlayIntegrity',
      'passwordState'                                           => 'PasswordState',
      'recoveryEmailAddress'                                    => 'RecoveryEmailAddress',
      'temporaryPasswordState'                                  => 'TemporaryPasswordState',
      'localFile'                                               => 'LocalFile',
      'remoteFile'                                              => 'RemoteFile',
      'file'                                                    => 'File',
      'InputFile'                                               => 'InputFile',
      'inputFileId'                                             => 'InputFile::Id',
      'inputFileRemote'                                         => 'InputFile::Remote',
      'inputFileLocal'                                          => 'InputFile::Local',
      'inputFileGenerated'                                      => 'InputFile::Generated',
      'photoSize'                                               => 'PhotoSize',
      'minithumbnail'                                           => 'Minithumbnail',
      'ThumbnailFormat'                                         => 'ThumbnailFormat',
      'thumbnailFormatJpeg'                                     => 'ThumbnailFormat::Jpeg',
      'thumbnailFormatGif'                                      => 'ThumbnailFormat::Gif',
      'thumbnailFormatMpeg4'                                    => 'ThumbnailFormat::Mpeg4',
      'thumbnailFormatPng'                                      => 'ThumbnailFormat::Png',
      'thumbnailFormatTgs'                                      => 'ThumbnailFormat::Tgs',
      'thumbnailFormatWebm'                                     => 'ThumbnailFormat::Webm',
      'thumbnailFormatWebp'                                     => 'ThumbnailFormat::Webp',
      'thumbnail'                                               => 'Thumbnail',
      'MaskPoint'                                               => 'MaskPoint',
      'maskPointForehead'                                       => 'MaskPoint::Forehead',
      'maskPointEyes'                                           => 'MaskPoint::Eyes',
      'maskPointMouth'                                          => 'MaskPoint::Mouth',
      'maskPointChin'                                           => 'MaskPoint::Chin',
      'maskPosition'                                            => 'MaskPosition',
      'StickerFormat'                                           => 'StickerFormat',
      'stickerFormatWebp'                                       => 'StickerFormat::Webp',
      'stickerFormatTgs'                                        => 'StickerFormat::Tgs',
      'stickerFormatWebm'                                       => 'StickerFormat::Webm',
      'StickerType'                                             => 'StickerType',
      'stickerTypeRegular'                                      => 'StickerType::Regular',
      'stickerTypeMask'                                         => 'StickerType::Mask',
      'stickerTypeCustomEmoji'                                  => 'StickerType::CustomEmoji',
      'StickerFullType'                                         => 'StickerFullType',
      'stickerFullTypeRegular'                                  => 'StickerFullType::Regular',
      'stickerFullTypeMask'                                     => 'StickerFullType::Mask',
      'stickerFullTypeCustomEmoji'                              => 'StickerFullType::CustomEmoji',
      'closedVectorPath'                                        => 'ClosedVectorPath',
      'outline'                                                 => 'Outline',
      'pollOption'                                              => 'PollOption',
      'PollType'                                                => 'PollType',
      'pollTypeRegular'                                         => 'PollType::Regular',
      'pollTypeQuiz'                                            => 'PollType::Quiz',
      'checklistTask'                                           => 'ChecklistTask',
      'inputChecklistTask'                                      => 'InputChecklistTask',
      'checklist'                                               => 'Checklist',
      'inputChecklist'                                          => 'InputChecklist',
      'animation'                                               => 'Animation',
      'audio'                                                   => 'Audio',
      'audios'                                                  => 'Audios',
      'document'                                                => 'Document',
      'photo'                                                   => 'Photo',
      'sticker'                                                 => 'Sticker',
      'video'                                                   => 'Video',
      'videoNote'                                               => 'VideoNote',
      'voiceNote'                                               => 'VoiceNote',
      'animatedEmoji'                                           => 'AnimatedEmoji',
      'contact'                                                 => 'Contact',
      'location'                                                => 'Location',
      'venue'                                                   => 'Venue',
      'game'                                                    => 'Game',
      'webApp'                                                  => 'WebApp',
      'poll'                                                    => 'Poll',
      'alternativeVideo'                                        => 'AlternativeVideo',
      'videoStoryboard'                                         => 'VideoStoryboard',
      'background'                                              => 'Background',
      'backgrounds'                                             => 'Backgrounds',
      'chatBackground'                                          => 'ChatBackground',
      'profilePhoto'                                            => 'ProfilePhoto',
      'chatPhotoInfo'                                           => 'ChatPhotoInfo',
      'ProfileTab'                                              => 'ProfileTab',
      'profileTabPosts'                                         => 'ProfileTab::Posts',
      'profileTabGifts'                                         => 'ProfileTab::Gifts',
      'profileTabMedia'                                         => 'ProfileTab::Media',
      'profileTabFiles'                                         => 'ProfileTab::Files',
      'profileTabLinks'                                         => 'ProfileTab::Links',
      'profileTabMusic'                                         => 'ProfileTab::Music',
      'profileTabVoice'                                         => 'ProfileTab::Voice',
      'profileTabGifs'                                          => 'ProfileTab::Gifs',
      'UserType'                                                => 'UserType',
      'userTypeRegular'                                         => 'UserType::Regular',
      'userTypeDeleted'                                         => 'UserType::Deleted',
      'userTypeBot'                                             => 'UserType::Bot',
      'userTypeUnknown'                                         => 'UserType::Unknown',
      'botCommand'                                              => 'BotCommand',
      'botCommands'                                             => 'BotCommands',
      'botMenuButton'                                           => 'BotMenuButton',
      'botVerificationParameters'                               => 'BotVerificationParameters',
      'botVerification'                                         => 'BotVerification',
      'verificationStatus'                                      => 'VerificationStatus',
      'chatLocation'                                            => 'ChatLocation',
      'birthdate'                                               => 'Birthdate',
      'closeBirthdayUser'                                       => 'CloseBirthdayUser',
      'BusinessAwayMessageSchedule'                             => 'BusinessAwayMessageSchedule',
      'businessAwayMessageScheduleAlways'                       => 'BusinessAwayMessageSchedule::Always',
      'businessAwayMessageScheduleOutsideOfOpeningHours'        => 'BusinessAwayMessageSchedule::OutsideOfOpeningHours',
      'businessAwayMessageScheduleCustom'                       => 'BusinessAwayMessageSchedule::Custom',
      'businessLocation'                                        => 'BusinessLocation',
      'businessRecipients'                                      => 'BusinessRecipients',
      'businessAwayMessageSettings'                             => 'BusinessAwayMessageSettings',
      'businessGreetingMessageSettings'                         => 'BusinessGreetingMessageSettings',
      'businessBotRights'                                       => 'BusinessBotRights',
      'businessConnectedBot'                                    => 'BusinessConnectedBot',
      'businessStartPage'                                       => 'BusinessStartPage',
      'inputBusinessStartPage'                                  => 'InputBusinessStartPage',
      'businessOpeningHoursInterval'                            => 'BusinessOpeningHoursInterval',
      'businessOpeningHours'                                    => 'BusinessOpeningHours',
      'businessInfo'                                            => 'BusinessInfo',
      'businessChatLink'                                        => 'BusinessChatLink',
      'businessChatLinks'                                       => 'BusinessChatLinks',
      'inputBusinessChatLink'                                   => 'InputBusinessChatLink',
      'businessChatLinkInfo'                                    => 'BusinessChatLinkInfo',
      'ChatPhotoStickerType'                                    => 'ChatPhotoStickerType',
      'chatPhotoStickerTypeRegularOrMask'                       => 'ChatPhotoStickerType::RegularOrMask',
      'chatPhotoStickerTypeCustomEmoji'                         => 'ChatPhotoStickerType::CustomEmoji',
      'chatPhotoSticker'                                        => 'ChatPhotoSticker',
      'animatedChatPhoto'                                       => 'AnimatedChatPhoto',
      'chatPhoto'                                               => 'ChatPhoto',
      'chatPhotos'                                              => 'ChatPhotos',
      'InputChatPhoto'                                          => 'InputChatPhoto',
      'inputChatPhotoPrevious'                                  => 'InputChatPhoto::Previous',
      'inputChatPhotoStatic'                                    => 'InputChatPhoto::Static',
      'inputChatPhotoAnimation'                                 => 'InputChatPhoto::Animation',
      'inputChatPhotoSticker'                                   => 'InputChatPhoto::Sticker',
      'chatPermissions'                                         => 'ChatPermissions',
      'chatAdministratorRights'                                 => 'ChatAdministratorRights',
      'GiftResalePrice'                                         => 'GiftResalePrice',
      'giftResalePriceStar'                                     => 'GiftResalePrice::Star',
      'giftResalePriceTon'                                      => 'GiftResalePrice::Ton',
      'GiftPurchaseOfferState'                                  => 'GiftPurchaseOfferState',
      'giftPurchaseOfferStatePending'                           => 'GiftPurchaseOfferState::Pending',
      'giftPurchaseOfferStateAccepted'                          => 'GiftPurchaseOfferState::Accepted',
      'giftPurchaseOfferStateRejected'                          => 'GiftPurchaseOfferState::Rejected',
      'SuggestedPostPrice'                                      => 'SuggestedPostPrice',
      'suggestedPostPriceStar'                                  => 'SuggestedPostPrice::Star',
      'suggestedPostPriceTon'                                   => 'SuggestedPostPrice::Ton',
      'SuggestedPostState'                                      => 'SuggestedPostState',
      'suggestedPostStatePending'                               => 'SuggestedPostState::Pending',
      'suggestedPostStateApproved'                              => 'SuggestedPostState::Approved',
      'suggestedPostStateDeclined'                              => 'SuggestedPostState::Declined',
      'suggestedPostInfo'                                       => 'SuggestedPostInfo',
      'inputSuggestedPostInfo'                                  => 'InputSuggestedPostInfo',
      'SuggestedPostRefundReason'                               => 'SuggestedPostRefundReason',
      'suggestedPostRefundReasonPostDeleted'                    => 'SuggestedPostRefundReason::PostDeleted',
      'suggestedPostRefundReasonPaymentRefunded'                => 'SuggestedPostRefundReason::PaymentRefunded',
      'starAmount'                                              => 'StarAmount',
      'StarSubscriptionType'                                    => 'StarSubscriptionType',
      'starSubscriptionTypeChannel'                             => 'StarSubscriptionType::Channel',
      'starSubscriptionTypeBot'                                 => 'StarSubscriptionType::Bot',
      'starSubscriptionPricing'                                 => 'StarSubscriptionPricing',
      'starSubscription'                                        => 'StarSubscription',
      'starSubscriptions'                                       => 'StarSubscriptions',
      'AffiliateType'                                           => 'AffiliateType',
      'affiliateTypeCurrentUser'                                => 'AffiliateType::CurrentUser',
      'affiliateTypeBot'                                        => 'AffiliateType::Bot',
      'affiliateTypeChannel'                                    => 'AffiliateType::Channel',
      'AffiliateProgramSortOrder'                               => 'AffiliateProgramSortOrder',
      'affiliateProgramSortOrderProfitability'                  => 'AffiliateProgramSortOrder::Profitability',
      'affiliateProgramSortOrderCreationDate'                   => 'AffiliateProgramSortOrder::CreationDate',
      'affiliateProgramSortOrderRevenue'                        => 'AffiliateProgramSortOrder::Revenue',
      'affiliateProgramParameters'                              => 'AffiliateProgramParameters',
      'affiliateProgramInfo'                                    => 'AffiliateProgramInfo',
      'affiliateInfo'                                           => 'AffiliateInfo',
      'foundAffiliateProgram'                                   => 'FoundAffiliateProgram',
      'foundAffiliatePrograms'                                  => 'FoundAffiliatePrograms',
      'connectedAffiliateProgram'                               => 'ConnectedAffiliateProgram',
      'connectedAffiliatePrograms'                              => 'ConnectedAffiliatePrograms',
      'productInfo'                                             => 'ProductInfo',
      'premiumPaymentOption'                                    => 'PremiumPaymentOption',
      'premiumStatePaymentOption'                               => 'PremiumStatePaymentOption',
      'premiumGiftPaymentOption'                                => 'PremiumGiftPaymentOption',
      'premiumGiftPaymentOptions'                               => 'PremiumGiftPaymentOptions',
      'premiumGiveawayPaymentOption'                            => 'PremiumGiveawayPaymentOption',
      'premiumGiveawayPaymentOptions'                           => 'PremiumGiveawayPaymentOptions',
      'premiumGiftCodeInfo'                                     => 'PremiumGiftCodeInfo',
      'starPaymentOption'                                       => 'StarPaymentOption',
      'starPaymentOptions'                                      => 'StarPaymentOptions',
      'starGiveawayWinnerOption'                                => 'StarGiveawayWinnerOption',
      'starGiveawayPaymentOption'                               => 'StarGiveawayPaymentOption',
      'starGiveawayPaymentOptions'                              => 'StarGiveawayPaymentOptions',
      'acceptedGiftTypes'                                       => 'AcceptedGiftTypes',
      'giftSettings'                                            => 'GiftSettings',
      'giftAuction'                                             => 'GiftAuction',
      'giftBackground'                                          => 'GiftBackground',
      'giftPurchaseLimits'                                      => 'GiftPurchaseLimits',
      'giftResaleParameters'                                    => 'GiftResaleParameters',
      'giftCollection'                                          => 'GiftCollection',
      'giftCollections'                                         => 'GiftCollections',
      'CanSendGiftResult'                                       => 'CanSendGiftResult',
      'canSendGiftResultOk'                                     => 'CanSendGiftResult::Ok',
      'canSendGiftResultFail'                                   => 'CanSendGiftResult::Fail',
      'UpgradedGiftOrigin'                                      => 'UpgradedGiftOrigin',
      'upgradedGiftOriginUpgrade'                               => 'UpgradedGiftOrigin::Upgrade',
      'upgradedGiftOriginTransfer'                              => 'UpgradedGiftOrigin::Transfer',
      'upgradedGiftOriginResale'                                => 'UpgradedGiftOrigin::Resale',
      'upgradedGiftOriginBlockchain'                            => 'UpgradedGiftOrigin::Blockchain',
      'upgradedGiftOriginPrepaidUpgrade'                        => 'UpgradedGiftOrigin::PrepaidUpgrade',
      'upgradedGiftOriginOffer'                                 => 'UpgradedGiftOrigin::Offer',
      'upgradedGiftModel'                                       => 'UpgradedGiftModel',
      'upgradedGiftSymbol'                                      => 'UpgradedGiftSymbol',
      'upgradedGiftBackdropColors'                              => 'UpgradedGiftBackdropColors',
      'upgradedGiftBackdrop'                                    => 'UpgradedGiftBackdrop',
      'upgradedGiftOriginalDetails'                             => 'UpgradedGiftOriginalDetails',
      'upgradedGiftColors'                                      => 'UpgradedGiftColors',
      'gift'                                                    => 'Gift',
      'upgradedGift'                                            => 'UpgradedGift',
      'upgradedGiftValueInfo'                                   => 'UpgradedGiftValueInfo',
      'upgradeGiftResult'                                       => 'UpgradeGiftResult',
      'availableGift'                                           => 'AvailableGift',
      'availableGifts'                                          => 'AvailableGifts',
      'giftUpgradePrice'                                        => 'GiftUpgradePrice',
      'UpgradedGiftAttributeId'                                 => 'UpgradedGiftAttributeId',
      'upgradedGiftAttributeIdModel'                            => 'UpgradedGiftAttributeId::Model',
      'upgradedGiftAttributeIdSymbol'                           => 'UpgradedGiftAttributeId::Symbol',
      'upgradedGiftAttributeIdBackdrop'                         => 'UpgradedGiftAttributeId::Backdrop',
      'upgradedGiftModelCount'                                  => 'UpgradedGiftModelCount',
      'upgradedGiftSymbolCount'                                 => 'UpgradedGiftSymbolCount',
      'upgradedGiftBackdropCount'                               => 'UpgradedGiftBackdropCount',
      'GiftForResaleOrder'                                      => 'GiftForResaleOrder',
      'giftForResaleOrderPrice'                                 => 'GiftForResaleOrder::Price',
      'giftForResaleOrderPriceChangeDate'                       => 'GiftForResaleOrder::PriceChangeDate',
      'giftForResaleOrderNumber'                                => 'GiftForResaleOrder::Number',
      'giftForResale'                                           => 'GiftForResale',
      'giftsForResale'                                          => 'GiftsForResale',
      'GiftResaleResult'                                        => 'GiftResaleResult',
      'giftResaleResultOk'                                      => 'GiftResaleResult::Ok',
      'giftResaleResultPriceIncreased'                          => 'GiftResaleResult::PriceIncreased',
      'SentGift'                                                => 'SentGift',
      'sentGiftRegular'                                         => 'SentGift::Regular',
      'sentGiftUpgraded'                                        => 'SentGift::Upgraded',
      'receivedGift'                                            => 'ReceivedGift',
      'receivedGifts'                                           => 'ReceivedGifts',
      'giftUpgradePreview'                                      => 'GiftUpgradePreview',
      'giftUpgradeVariants'                                     => 'GiftUpgradeVariants',
      'auctionBid'                                              => 'AuctionBid',
      'userAuctionBid'                                          => 'UserAuctionBid',
      'auctionRound'                                            => 'AuctionRound',
      'AuctionState'                                            => 'AuctionState',
      'auctionStateActive'                                      => 'AuctionState::Active',
      'auctionStateFinished'                                    => 'AuctionState::Finished',
      'giftAuctionState'                                        => 'GiftAuctionState',
      'giftAuctionAcquiredGift'                                 => 'GiftAuctionAcquiredGift',
      'giftAuctionAcquiredGifts'                                => 'GiftAuctionAcquiredGifts',
      'TransactionDirection'                                    => 'TransactionDirection',
      'transactionDirectionIncoming'                            => 'TransactionDirection::Incoming',
      'transactionDirectionOutgoing'                            => 'TransactionDirection::Outgoing',
      'StarTransactionType'                                     => 'StarTransactionType',
      'starTransactionTypePremiumBotDeposit'                    => 'StarTransactionType::PremiumBotDeposit',
      'starTransactionTypeAppStoreDeposit'                      => 'StarTransactionType::AppStoreDeposit',
      'starTransactionTypeGooglePlayDeposit'                    => 'StarTransactionType::GooglePlayDeposit',
      'starTransactionTypeFragmentDeposit'                      => 'StarTransactionType::FragmentDeposit',
      'starTransactionTypeUserDeposit'                          => 'StarTransactionType::UserDeposit',
      'starTransactionTypeGiveawayDeposit'                      => 'StarTransactionType::GiveawayDeposit',
      'starTransactionTypeFragmentWithdrawal'                   => 'StarTransactionType::FragmentWithdrawal',
      'starTransactionTypeTelegramAdsWithdrawal'                => 'StarTransactionType::TelegramAdsWithdrawal',
      'starTransactionTypeTelegramApiUsage'                     => 'StarTransactionType::TelegramApiUsage',
      'starTransactionTypeBotPaidMediaPurchase'                 => 'StarTransactionType::BotPaidMediaPurchase',
      'starTransactionTypeBotPaidMediaSale'                     => 'StarTransactionType::BotPaidMediaSale',
      'starTransactionTypeChannelPaidMediaPurchase'             => 'StarTransactionType::ChannelPaidMediaPurchase',
      'starTransactionTypeChannelPaidMediaSale'                 => 'StarTransactionType::ChannelPaidMediaSale',
      'starTransactionTypeBotInvoicePurchase'                   => 'StarTransactionType::BotInvoicePurchase',
      'starTransactionTypeBotInvoiceSale'                       => 'StarTransactionType::BotInvoiceSale',
      'starTransactionTypeBotSubscriptionPurchase'              => 'StarTransactionType::BotSubscriptionPurchase',
      'starTransactionTypeBotSubscriptionSale'                  => 'StarTransactionType::BotSubscriptionSale',
      'starTransactionTypeChannelSubscriptionPurchase'          => 'StarTransactionType::ChannelSubscriptionPurchase',
      'starTransactionTypeChannelSubscriptionSale'              => 'StarTransactionType::ChannelSubscriptionSale',
      'starTransactionTypeGiftAuctionBid'                       => 'StarTransactionType::GiftAuctionBid',
      'starTransactionTypeGiftPurchase'                         => 'StarTransactionType::GiftPurchase',
      'starTransactionTypeGiftPurchaseOffer'                    => 'StarTransactionType::GiftPurchaseOffer',
      'starTransactionTypeGiftTransfer'                         => 'StarTransactionType::GiftTransfer',
      'starTransactionTypeGiftOriginalDetailsDrop'              => 'StarTransactionType::GiftOriginalDetailsDrop',
      'starTransactionTypeGiftSale'                             => 'StarTransactionType::GiftSale',
      'starTransactionTypeGiftUpgrade'                          => 'StarTransactionType::GiftUpgrade',
      'starTransactionTypeGiftUpgradePurchase'                  => 'StarTransactionType::GiftUpgradePurchase',
      'starTransactionTypeUpgradedGiftPurchase'                 => 'StarTransactionType::UpgradedGiftPurchase',
      'starTransactionTypeUpgradedGiftSale'                     => 'StarTransactionType::UpgradedGiftSale',
      'starTransactionTypeChannelPaidReactionSend'              => 'StarTransactionType::ChannelPaidReactionSend',
      'starTransactionTypeChannelPaidReactionReceive'           => 'StarTransactionType::ChannelPaidReactionReceive',
      'starTransactionTypeAffiliateProgramCommission'           => 'StarTransactionType::AffiliateProgramCommission',
      'starTransactionTypePaidMessageSend'                      => 'StarTransactionType::PaidMessageSend',
      'starTransactionTypePaidMessageReceive'                   => 'StarTransactionType::PaidMessageReceive',
      'starTransactionTypePaidGroupCallMessageSend'             => 'StarTransactionType::PaidGroupCallMessageSend',
      'starTransactionTypePaidGroupCallMessageReceive'          => 'StarTransactionType::PaidGroupCallMessageReceive',
      'starTransactionTypePaidGroupCallReactionSend'            => 'StarTransactionType::PaidGroupCallReactionSend',
      'starTransactionTypePaidGroupCallReactionReceive'         => 'StarTransactionType::PaidGroupCallReactionReceive',
      'starTransactionTypeSuggestedPostPaymentSend'             => 'StarTransactionType::SuggestedPostPaymentSend',
      'starTransactionTypeSuggestedPostPaymentReceive'          => 'StarTransactionType::SuggestedPostPaymentReceive',
      'starTransactionTypePremiumPurchase'                      => 'StarTransactionType::PremiumPurchase',
      'starTransactionTypeBusinessBotTransferSend'              => 'StarTransactionType::BusinessBotTransferSend',
      'starTransactionTypeBusinessBotTransferReceive'           => 'StarTransactionType::BusinessBotTransferReceive',
      'starTransactionTypePublicPostSearch'                     => 'StarTransactionType::PublicPostSearch',
      'starTransactionTypeUnsupported'                          => 'StarTransactionType::Unsupported',
      'starTransaction'                                         => 'StarTransaction',
      'starTransactions'                                        => 'StarTransactions',
      'TonTransactionType'                                      => 'TonTransactionType',
      'tonTransactionTypeFragmentDeposit'                       => 'TonTransactionType::FragmentDeposit',
      'tonTransactionTypeFragmentWithdrawal'                    => 'TonTransactionType::FragmentWithdrawal',
      'tonTransactionTypeSuggestedPostPayment'                  => 'TonTransactionType::SuggestedPostPayment',
      'tonTransactionTypeGiftPurchaseOffer'                     => 'TonTransactionType::GiftPurchaseOffer',
      'tonTransactionTypeUpgradedGiftPurchase'                  => 'TonTransactionType::UpgradedGiftPurchase',
      'tonTransactionTypeUpgradedGiftSale'                      => 'TonTransactionType::UpgradedGiftSale',
      'tonTransactionTypeUnsupported'                           => 'TonTransactionType::Unsupported',
      'tonTransaction'                                          => 'TonTransaction',
      'tonTransactions'                                         => 'TonTransactions',
      'ActiveStoryState'                                        => 'ActiveStoryState',
      'activeStoryStateLive'                                    => 'ActiveStoryState::Live',
      'activeStoryStateUnread'                                  => 'ActiveStoryState::Unread',
      'activeStoryStateRead'                                    => 'ActiveStoryState::Read',
      'GiveawayParticipantStatus'                               => 'GiveawayParticipantStatus',
      'giveawayParticipantStatusEligible'                       => 'GiveawayParticipantStatus::Eligible',
      'giveawayParticipantStatusParticipating'                  => 'GiveawayParticipantStatus::Participating',
      'giveawayParticipantStatusAlreadyWasMember'               => 'GiveawayParticipantStatus::AlreadyWasMember',
      'giveawayParticipantStatusAdministrator'                  => 'GiveawayParticipantStatus::Administrator',
      'giveawayParticipantStatusDisallowedCountry'              => 'GiveawayParticipantStatus::DisallowedCountry',
      'GiveawayInfo'                                            => 'GiveawayInfo',
      'giveawayInfoOngoing'                                     => 'GiveawayInfo::Ongoing',
      'giveawayInfoCompleted'                                   => 'GiveawayInfo::Completed',
      'GiveawayPrize'                                           => 'GiveawayPrize',
      'giveawayPrizePremium'                                    => 'GiveawayPrize::Premium',
      'giveawayPrizeStars'                                      => 'GiveawayPrize::Stars',
      'accentColor'                                             => 'AccentColor',
      'profileAccentColors'                                     => 'ProfileAccentColors',
      'profileAccentColor'                                      => 'ProfileAccentColor',
      'userRating'                                              => 'UserRating',
      'restrictionInfo'                                         => 'RestrictionInfo',
      'EmojiStatusType'                                         => 'EmojiStatusType',
      'emojiStatusTypeCustomEmoji'                              => 'EmojiStatusType::CustomEmoji',
      'emojiStatusTypeUpgradedGift'                             => 'EmojiStatusType::UpgradedGift',
      'emojiStatus'                                             => 'EmojiStatus',
      'emojiStatuses'                                           => 'EmojiStatuses',
      'emojiStatusCustomEmojis'                                 => 'EmojiStatusCustomEmojis',
      'usernames'                                               => 'Usernames',
      'user'                                                    => 'User',
      'botInfo'                                                 => 'BotInfo',
      'userFullInfo'                                            => 'UserFullInfo',
      'users'                                                   => 'Users',
      'foundUsers'                                              => 'FoundUsers',
      'chatAdministrator'                                       => 'ChatAdministrator',
      'chatAdministrators'                                      => 'ChatAdministrators',
      'ChatMemberStatus'                                        => 'ChatMemberStatus',
      'chatMemberStatusCreator'                                 => 'ChatMemberStatus::Creator',
      'chatMemberStatusAdministrator'                           => 'ChatMemberStatus::Administrator',
      'chatMemberStatusMember'                                  => 'ChatMemberStatus::Member',
      'chatMemberStatusRestricted'                              => 'ChatMemberStatus::Restricted',
      'chatMemberStatusLeft'                                    => 'ChatMemberStatus::Left',
      'chatMemberStatusBanned'                                  => 'ChatMemberStatus::Banned',
      'chatMember'                                              => 'ChatMember',
      'chatMembers'                                             => 'ChatMembers',
      'ChatMembersFilter'                                       => 'ChatMembersFilter',
      'chatMembersFilterContacts'                               => 'ChatMembersFilter::Contacts',
      'chatMembersFilterAdministrators'                         => 'ChatMembersFilter::Administrators',
      'chatMembersFilterMembers'                                => 'ChatMembersFilter::Members',
      'chatMembersFilterMention'                                => 'ChatMembersFilter::Mention',
      'chatMembersFilterRestricted'                             => 'ChatMembersFilter::Restricted',
      'chatMembersFilterBanned'                                 => 'ChatMembersFilter::Banned',
      'chatMembersFilterBots'                                   => 'ChatMembersFilter::Bots',
      'SupergroupMembersFilter'                                 => 'SupergroupMembersFilter',
      'supergroupMembersFilterRecent'                           => 'SupergroupMembersFilter::Recent',
      'supergroupMembersFilterContacts'                         => 'SupergroupMembersFilter::Contacts',
      'supergroupMembersFilterAdministrators'                   => 'SupergroupMembersFilter::Administrators',
      'supergroupMembersFilterSearch'                           => 'SupergroupMembersFilter::Search',
      'supergroupMembersFilterRestricted'                       => 'SupergroupMembersFilter::Restricted',
      'supergroupMembersFilterBanned'                           => 'SupergroupMembersFilter::Banned',
      'supergroupMembersFilterMention'                          => 'SupergroupMembersFilter::Mention',
      'supergroupMembersFilterBots'                             => 'SupergroupMembersFilter::Bots',
      'chatInviteLink'                                          => 'ChatInviteLink',
      'chatInviteLinks'                                         => 'ChatInviteLinks',
      'chatInviteLinkCount'                                     => 'ChatInviteLinkCount',
      'chatInviteLinkCounts'                                    => 'ChatInviteLinkCounts',
      'chatInviteLinkMember'                                    => 'ChatInviteLinkMember',
      'chatInviteLinkMembers'                                   => 'ChatInviteLinkMembers',
      'InviteLinkChatType'                                      => 'InviteLinkChatType',
      'inviteLinkChatTypeBasicGroup'                            => 'InviteLinkChatType::BasicGroup',
      'inviteLinkChatTypeSupergroup'                            => 'InviteLinkChatType::Supergroup',
      'inviteLinkChatTypeChannel'                               => 'InviteLinkChatType::Channel',
      'chatInviteLinkSubscriptionInfo'                          => 'ChatInviteLinkSubscriptionInfo',
      'chatInviteLinkInfo'                                      => 'ChatInviteLinkInfo',
      'chatJoinRequest'                                         => 'ChatJoinRequest',
      'chatJoinRequests'                                        => 'ChatJoinRequests',
      'chatJoinRequestsInfo'                                    => 'ChatJoinRequestsInfo',
      'basicGroup'                                              => 'BasicGroup',
      'basicGroupFullInfo'                                      => 'BasicGroupFullInfo',
      'supergroup'                                              => 'Supergroup',
      'supergroupFullInfo'                                      => 'SupergroupFullInfo',
      'SecretChatState'                                         => 'SecretChatState',
      'secretChatStatePending'                                  => 'SecretChatState::Pending',
      'secretChatStateReady'                                    => 'SecretChatState::Ready',
      'secretChatStateClosed'                                   => 'SecretChatState::Closed',
      'secretChat'                                              => 'SecretChat',
      'publicPostSearchLimits'                                  => 'PublicPostSearchLimits',
      'MessageSender'                                           => 'MessageSender',
      'messageSenderUser'                                       => 'MessageSender::User',
      'messageSenderChat'                                       => 'MessageSender::Chat',
      'messageSenders'                                          => 'MessageSenders',
      'chatMessageSender'                                       => 'ChatMessageSender',
      'chatMessageSenders'                                      => 'ChatMessageSenders',
      'MessageReadDate'                                         => 'MessageReadDate',
      'messageReadDateRead'                                     => 'MessageReadDate::Read',
      'messageReadDateUnread'                                   => 'MessageReadDate::Unread',
      'messageReadDateTooOld'                                   => 'MessageReadDate::TooOld',
      'messageReadDateUserPrivacyRestricted'                    => 'MessageReadDate::UserPrivacyRestricted',
      'messageReadDateMyPrivacyRestricted'                      => 'MessageReadDate::MyPrivacyRestricted',
      'messageViewer'                                           => 'MessageViewer',
      'messageViewers'                                          => 'MessageViewers',
      'MessageOrigin'                                           => 'MessageOrigin',
      'messageOriginUser'                                       => 'MessageOrigin::User',
      'messageOriginHiddenUser'                                 => 'MessageOrigin::HiddenUser',
      'messageOriginChat'                                       => 'MessageOrigin::Chat',
      'messageOriginChannel'                                    => 'MessageOrigin::Channel',
      'forwardSource'                                           => 'ForwardSource',
      'ReactionType'                                            => 'ReactionType',
      'reactionTypeEmoji'                                       => 'ReactionType::Emoji',
      'reactionTypeCustomEmoji'                                 => 'ReactionType::CustomEmoji',
      'reactionTypePaid'                                        => 'ReactionType::Paid',
      'PaidReactionType'                                        => 'PaidReactionType',
      'paidReactionTypeRegular'                                 => 'PaidReactionType::Regular',
      'paidReactionTypeAnonymous'                               => 'PaidReactionType::Anonymous',
      'paidReactionTypeChat'                                    => 'PaidReactionType::Chat',
      'paidReactor'                                             => 'PaidReactor',
      'liveStoryDonors'                                         => 'LiveStoryDonors',
      'messageForwardInfo'                                      => 'MessageForwardInfo',
      'messageImportInfo'                                       => 'MessageImportInfo',
      'messageReplyInfo'                                        => 'MessageReplyInfo',
      'messageReaction'                                         => 'MessageReaction',
      'messageReactions'                                        => 'MessageReactions',
      'messageInteractionInfo'                                  => 'MessageInteractionInfo',
      'unreadReaction'                                          => 'UnreadReaction',
      'MessageTopic'                                            => 'MessageTopic',
      'messageTopicThread'                                      => 'MessageTopic::Thread',
      'messageTopicForum'                                       => 'MessageTopic::Forum',
      'messageTopicDirectMessages'                              => 'MessageTopic::DirectMessages',
      'messageTopicSavedMessages'                               => 'MessageTopic::SavedMessages',
      'MessageEffectType'                                       => 'MessageEffectType',
      'messageEffectTypeEmojiReaction'                          => 'MessageEffectType::EmojiReaction',
      'messageEffectTypePremiumSticker'                         => 'MessageEffectType::PremiumSticker',
      'messageEffect'                                           => 'MessageEffect',
      'MessageSendingState'                                     => 'MessageSendingState',
      'messageSendingStatePending'                              => 'MessageSendingState::Pending',
      'messageSendingStateFailed'                               => 'MessageSendingState::Failed',
      'textQuote'                                               => 'TextQuote',
      'inputTextQuote'                                          => 'InputTextQuote',
      'MessageReplyTo'                                          => 'MessageReplyTo',
      'messageReplyToMessage'                                   => 'MessageReplyTo::Message',
      'messageReplyToStory'                                     => 'MessageReplyTo::Story',
      'InputMessageReplyTo'                                     => 'InputMessageReplyTo',
      'inputMessageReplyToMessage'                              => 'InputMessageReplyTo::Message',
      'inputMessageReplyToExternalMessage'                      => 'InputMessageReplyTo::ExternalMessage',
      'inputMessageReplyToStory'                                => 'InputMessageReplyTo::Story',
      'factCheck'                                               => 'FactCheck',
      'message'                                                 => 'Message',
      'messages'                                                => 'Messages',
      'foundMessages'                                           => 'FoundMessages',
      'foundChatMessages'                                       => 'FoundChatMessages',
      'foundPublicPosts'                                        => 'FoundPublicPosts',
      'messagePosition'                                         => 'MessagePosition',
      'messagePositions'                                        => 'MessagePositions',
      'messageCalendarDay'                                      => 'MessageCalendarDay',
      'messageCalendar'                                         => 'MessageCalendar',
      'businessMessage'                                         => 'BusinessMessage',
      'businessMessages'                                        => 'BusinessMessages',
      'MessageSource'                                           => 'MessageSource',
      'messageSourceChatHistory'                                => 'MessageSource::ChatHistory',
      'messageSourceMessageThreadHistory'                       => 'MessageSource::MessageThreadHistory',
      'messageSourceForumTopicHistory'                          => 'MessageSource::ForumTopicHistory',
      'messageSourceDirectMessagesChatTopicHistory'             => 'MessageSource::DirectMessagesChatTopicHistory',
      'messageSourceHistoryPreview'                             => 'MessageSource::HistoryPreview',
      'messageSourceChatList'                                   => 'MessageSource::ChatList',
      'messageSourceSearch'                                     => 'MessageSource::Search',
      'messageSourceChatEventLog'                               => 'MessageSource::ChatEventLog',
      'messageSourceNotification'                               => 'MessageSource::Notification',
      'messageSourceScreenshot'                                 => 'MessageSource::Screenshot',
      'messageSourceOther'                                      => 'MessageSource::Other',
      'advertisementSponsor'                                    => 'AdvertisementSponsor',
      'sponsoredMessage'                                        => 'SponsoredMessage',
      'sponsoredMessages'                                       => 'SponsoredMessages',
      'sponsoredChat'                                           => 'SponsoredChat',
      'sponsoredChats'                                          => 'SponsoredChats',
      'videoMessageAdvertisement'                               => 'VideoMessageAdvertisement',
      'videoMessageAdvertisements'                              => 'VideoMessageAdvertisements',
      'reportOption'                                            => 'ReportOption',
      'ReportSponsoredResult'                                   => 'ReportSponsoredResult',
      'reportSponsoredResultOk'                                 => 'ReportSponsoredResult::Ok',
      'reportSponsoredResultFailed'                             => 'ReportSponsoredResult::Failed',
      'reportSponsoredResultOptionRequired'                     => 'ReportSponsoredResult::OptionRequired',
      'reportSponsoredResultAdsHidden'                          => 'ReportSponsoredResult::AdsHidden',
      'reportSponsoredResultPremiumRequired'                    => 'ReportSponsoredResult::PremiumRequired',
      'fileDownload'                                            => 'FileDownload',
      'downloadedFileCounts'                                    => 'DownloadedFileCounts',
      'foundFileDownloads'                                      => 'FoundFileDownloads',
      'NotificationSettingsScope'                               => 'NotificationSettingsScope',
      'notificationSettingsScopePrivateChats'                   => 'NotificationSettingsScope::PrivateChats',
      'notificationSettingsScopeGroupChats'                     => 'NotificationSettingsScope::GroupChats',
      'notificationSettingsScopeChannelChats'                   => 'NotificationSettingsScope::ChannelChats',
      'chatNotificationSettings'                                => 'ChatNotificationSettings',
      'scopeNotificationSettings'                               => 'ScopeNotificationSettings',
      'ReactionNotificationSource'                              => 'ReactionNotificationSource',
      'reactionNotificationSourceNone'                          => 'ReactionNotificationSource::None',
      'reactionNotificationSourceContacts'                      => 'ReactionNotificationSource::Contacts',
      'reactionNotificationSourceAll'                           => 'ReactionNotificationSource::All',
      'reactionNotificationSettings'                            => 'ReactionNotificationSettings',
      'draftMessage'                                            => 'DraftMessage',
      'ChatType'                                                => 'ChatType',
      'chatTypePrivate'                                         => 'ChatType::Private',
      'chatTypeBasicGroup'                                      => 'ChatType::BasicGroup',
      'chatTypeSupergroup'                                      => 'ChatType::Supergroup',
      'chatTypeSecret'                                          => 'ChatType::Secret',
      'chatFolderIcon'                                          => 'ChatFolderIcon',
      'chatFolderName'                                          => 'ChatFolderName',
      'chatFolder'                                              => 'ChatFolder',
      'chatFolderInfo'                                          => 'ChatFolderInfo',
      'chatFolderInviteLink'                                    => 'ChatFolderInviteLink',
      'chatFolderInviteLinks'                                   => 'ChatFolderInviteLinks',
      'chatFolderInviteLinkInfo'                                => 'ChatFolderInviteLinkInfo',
      'recommendedChatFolder'                                   => 'RecommendedChatFolder',
      'recommendedChatFolders'                                  => 'RecommendedChatFolders',
      'archiveChatListSettings'                                 => 'ArchiveChatListSettings',
      'ChatList'                                                => 'ChatList',
      'chatListMain'                                            => 'ChatList::Main',
      'chatListArchive'                                         => 'ChatList::Archive',
      'chatListFolder'                                          => 'ChatList::Folder',
      'chatLists'                                               => 'ChatLists',
      'ChatSource'                                              => 'ChatSource',
      'chatSourceMtprotoProxy'                                  => 'ChatSource::MtprotoProxy',
      'chatSourcePublicServiceAnnouncement'                     => 'ChatSource::PublicServiceAnnouncement',
      'chatPosition'                                            => 'ChatPosition',
      'ChatAvailableReactions'                                  => 'ChatAvailableReactions',
      'chatAvailableReactionsAll'                               => 'ChatAvailableReactions::All',
      'chatAvailableReactionsSome'                              => 'ChatAvailableReactions::Some',
      'savedMessagesTag'                                        => 'SavedMessagesTag',
      'savedMessagesTags'                                       => 'SavedMessagesTags',
      'businessBotManageBar'                                    => 'BusinessBotManageBar',
      'videoChat'                                               => 'VideoChat',
      'chat'                                                    => 'Chat',
      'chats'                                                   => 'Chats',
      'failedToAddMember'                                       => 'FailedToAddMember',
      'failedToAddMembers'                                      => 'FailedToAddMembers',
      'createdBasicGroupChat'                                   => 'CreatedBasicGroupChat',
      'PublicChatType'                                          => 'PublicChatType',
      'publicChatTypeHasUsername'                               => 'PublicChatType::HasUsername',
      'publicChatTypeIsLocationBased'                           => 'PublicChatType::IsLocationBased',
      'accountInfo'                                             => 'AccountInfo',
      'ChatActionBar'                                           => 'ChatActionBar',
      'chatActionBarReportSpam'                                 => 'ChatActionBar::ReportSpam',
      'chatActionBarInviteMembers'                              => 'ChatActionBar::InviteMembers',
      'chatActionBarReportAddBlock'                             => 'ChatActionBar::ReportAddBlock',
      'chatActionBarAddContact'                                 => 'ChatActionBar::AddContact',
      'chatActionBarSharePhoneNumber'                           => 'ChatActionBar::SharePhoneNumber',
      'chatActionBarJoinRequest'                                => 'ChatActionBar::JoinRequest',
      'KeyboardButtonType'                                      => 'KeyboardButtonType',
      'keyboardButtonTypeText'                                  => 'KeyboardButtonType::Text',
      'keyboardButtonTypeRequestPhoneNumber'                    => 'KeyboardButtonType::RequestPhoneNumber',
      'keyboardButtonTypeRequestLocation'                       => 'KeyboardButtonType::RequestLocation',
      'keyboardButtonTypeRequestPoll'                           => 'KeyboardButtonType::RequestPoll',
      'keyboardButtonTypeRequestUsers'                          => 'KeyboardButtonType::RequestUsers',
      'keyboardButtonTypeRequestChat'                           => 'KeyboardButtonType::RequestChat',
      'keyboardButtonTypeWebApp'                                => 'KeyboardButtonType::WebApp',
      'keyboardButton'                                          => 'KeyboardButton',
      'InlineKeyboardButtonType'                                => 'InlineKeyboardButtonType',
      'inlineKeyboardButtonTypeUrl'                             => 'InlineKeyboardButtonType::Url',
      'inlineKeyboardButtonTypeLoginUrl'                        => 'InlineKeyboardButtonType::LoginUrl',
      'inlineKeyboardButtonTypeWebApp'                          => 'InlineKeyboardButtonType::WebApp',
      'inlineKeyboardButtonTypeCallback'                        => 'InlineKeyboardButtonType::Callback',
      'inlineKeyboardButtonTypeCallbackWithPassword'            => 'InlineKeyboardButtonType::CallbackWithPassword',
      'inlineKeyboardButtonTypeCallbackGame'                    => 'InlineKeyboardButtonType::CallbackGame',
      'inlineKeyboardButtonTypeSwitchInline'                    => 'InlineKeyboardButtonType::SwitchInline',
      'inlineKeyboardButtonTypeBuy'                             => 'InlineKeyboardButtonType::Buy',
      'inlineKeyboardButtonTypeUser'                            => 'InlineKeyboardButtonType::User',
      'inlineKeyboardButtonTypeCopyText'                        => 'InlineKeyboardButtonType::CopyText',
      'inlineKeyboardButton'                                    => 'InlineKeyboardButton',
      'ReplyMarkup'                                             => 'ReplyMarkup',
      'replyMarkupRemoveKeyboard'                               => 'ReplyMarkup::RemoveKeyboard',
      'replyMarkupForceReply'                                   => 'ReplyMarkup::ForceReply',
      'replyMarkupShowKeyboard'                                 => 'ReplyMarkup::ShowKeyboard',
      'replyMarkupInlineKeyboard'                               => 'ReplyMarkup::InlineKeyboard',
      'LoginUrlInfo'                                            => 'LoginUrlInfo',
      'loginUrlInfoOpen'                                        => 'LoginUrlInfo::Open',
      'loginUrlInfoRequestConfirmation'                         => 'LoginUrlInfo::RequestConfirmation',
      'themeParameters'                                         => 'ThemeParameters',
      'WebAppOpenMode'                                          => 'WebAppOpenMode',
      'webAppOpenModeCompact'                                   => 'WebAppOpenMode::Compact',
      'webAppOpenModeFullSize'                                  => 'WebAppOpenMode::FullSize',
      'webAppOpenModeFullScreen'                                => 'WebAppOpenMode::FullScreen',
      'foundWebApp'                                             => 'FoundWebApp',
      'webAppInfo'                                              => 'WebAppInfo',
      'mainWebApp'                                              => 'MainWebApp',
      'webAppOpenParameters'                                    => 'WebAppOpenParameters',
      'messageThreadInfo'                                       => 'MessageThreadInfo',
      'SavedMessagesTopicType'                                  => 'SavedMessagesTopicType',
      'savedMessagesTopicTypeMyNotes'                           => 'SavedMessagesTopicType::MyNotes',
      'savedMessagesTopicTypeAuthorHidden'                      => 'SavedMessagesTopicType::AuthorHidden',
      'savedMessagesTopicTypeSavedFromChat'                     => 'SavedMessagesTopicType::SavedFromChat',
      'savedMessagesTopic'                                      => 'SavedMessagesTopic',
      'directMessagesChatTopic'                                 => 'DirectMessagesChatTopic',
      'forumTopicIcon'                                          => 'ForumTopicIcon',
      'forumTopicInfo'                                          => 'ForumTopicInfo',
      'forumTopic'                                              => 'ForumTopic',
      'forumTopics'                                             => 'ForumTopics',
      'linkPreviewOptions'                                      => 'LinkPreviewOptions',
      'sharedUser'                                              => 'SharedUser',
      'sharedChat'                                              => 'SharedChat',
      'BuiltInTheme'                                            => 'BuiltInTheme',
      'builtInThemeClassic'                                     => 'BuiltInTheme::Classic',
      'builtInThemeDay'                                         => 'BuiltInTheme::Day',
      'builtInThemeNight'                                       => 'BuiltInTheme::Night',
      'builtInThemeTinted'                                      => 'BuiltInTheme::Tinted',
      'builtInThemeArctic'                                      => 'BuiltInTheme::Arctic',
      'themeSettings'                                           => 'ThemeSettings',
      'RichText'                                                => 'RichText',
      'richTextPlain'                                           => 'RichText::Plain',
      'richTextBold'                                            => 'RichText::Bold',
      'richTextItalic'                                          => 'RichText::Italic',
      'richTextUnderline'                                       => 'RichText::Underline',
      'richTextStrikethrough'                                   => 'RichText::Strikethrough',
      'richTextFixed'                                           => 'RichText::Fixed',
      'richTextUrl'                                             => 'RichText::Url',
      'richTextEmailAddress'                                    => 'RichText::EmailAddress',
      'richTextSubscript'                                       => 'RichText::Subscript',
      'richTextSuperscript'                                     => 'RichText::Superscript',
      'richTextMarked'                                          => 'RichText::Marked',
      'richTextPhoneNumber'                                     => 'RichText::PhoneNumber',
      'richTextIcon'                                            => 'RichText::Icon',
      'richTextReference'                                       => 'RichText::Reference',
      'richTextAnchor'                                          => 'RichText::Anchor',
      'richTextAnchorLink'                                      => 'RichText::AnchorLink',
      'richTexts'                                               => 'RichText::s',
      'pageBlockCaption'                                        => 'PageBlockCaption',
      'pageBlockListItem'                                       => 'PageBlockListItem',
      'PageBlockHorizontalAlignment'                            => 'PageBlockHorizontalAlignment',
      'pageBlockHorizontalAlignmentLeft'                        => 'PageBlockHorizontalAlignment::Left',
      'pageBlockHorizontalAlignmentCenter'                      => 'PageBlockHorizontalAlignment::Center',
      'pageBlockHorizontalAlignmentRight'                       => 'PageBlockHorizontalAlignment::Right',
      'PageBlockVerticalAlignment'                              => 'PageBlockVerticalAlignment',
      'pageBlockVerticalAlignmentTop'                           => 'PageBlockVerticalAlignment::Top',
      'pageBlockVerticalAlignmentMiddle'                        => 'PageBlockVerticalAlignment::Middle',
      'pageBlockVerticalAlignmentBottom'                        => 'PageBlockVerticalAlignment::Bottom',
      'pageBlockTableCell'                                      => 'PageBlockTableCell',
      'pageBlockRelatedArticle'                                 => 'PageBlockRelatedArticle',
      'PageBlock'                                               => 'PageBlock',
      'pageBlockTitle'                                          => 'PageBlock::Title',
      'pageBlockSubtitle'                                       => 'PageBlock::Subtitle',
      'pageBlockAuthorDate'                                     => 'PageBlock::AuthorDate',
      'pageBlockHeader'                                         => 'PageBlock::Header',
      'pageBlockSubheader'                                      => 'PageBlock::Subheader',
      'pageBlockKicker'                                         => 'PageBlock::Kicker',
      'pageBlockParagraph'                                      => 'PageBlock::Paragraph',
      'pageBlockPreformatted'                                   => 'PageBlock::Preformatted',
      'pageBlockFooter'                                         => 'PageBlock::Footer',
      'pageBlockDivider'                                        => 'PageBlock::Divider',
      'pageBlockAnchor'                                         => 'PageBlock::Anchor',
      'pageBlockList'                                           => 'PageBlock::List',
      'pageBlockBlockQuote'                                     => 'PageBlock::BlockQuote',
      'pageBlockPullQuote'                                      => 'PageBlock::PullQuote',
      'pageBlockAnimation'                                      => 'PageBlock::Animation',
      'pageBlockAudio'                                          => 'PageBlock::Audio',
      'pageBlockPhoto'                                          => 'PageBlock::Photo',
      'pageBlockVideo'                                          => 'PageBlock::Video',
      'pageBlockVoiceNote'                                      => 'PageBlock::VoiceNote',
      'pageBlockCover'                                          => 'PageBlock::Cover',
      'pageBlockEmbedded'                                       => 'PageBlock::Embedded',
      'pageBlockEmbeddedPost'                                   => 'PageBlock::EmbeddedPost',
      'pageBlockCollage'                                        => 'PageBlock::Collage',
      'pageBlockSlideshow'                                      => 'PageBlock::Slideshow',
      'pageBlockChatLink'                                       => 'PageBlock::ChatLink',
      'pageBlockTable'                                          => 'PageBlock::Table',
      'pageBlockDetails'                                        => 'PageBlock::Details',
      'pageBlockRelatedArticles'                                => 'PageBlock::RelatedArticles',
      'pageBlockMap'                                            => 'PageBlock::Map',
      'webPageInstantView'                                      => 'WebPageInstantView',
      'LinkPreviewAlbumMedia'                                   => 'LinkPreviewAlbumMedia',
      'linkPreviewAlbumMediaPhoto'                              => 'LinkPreviewAlbumMedia::Photo',
      'linkPreviewAlbumMediaVideo'                              => 'LinkPreviewAlbumMedia::Video',
      'LinkPreviewType'                                         => 'LinkPreviewType',
      'linkPreviewTypeAlbum'                                    => 'LinkPreviewType::Album',
      'linkPreviewTypeAnimation'                                => 'LinkPreviewType::Animation',
      'linkPreviewTypeApp'                                      => 'LinkPreviewType::App',
      'linkPreviewTypeArticle'                                  => 'LinkPreviewType::Article',
      'linkPreviewTypeAudio'                                    => 'LinkPreviewType::Audio',
      'linkPreviewTypeBackground'                               => 'LinkPreviewType::Background',
      'linkPreviewTypeChannelBoost'                             => 'LinkPreviewType::ChannelBoost',
      'linkPreviewTypeChat'                                     => 'LinkPreviewType::Chat',
      'linkPreviewTypeDirectMessagesChat'                       => 'LinkPreviewType::DirectMessagesChat',
      'linkPreviewTypeDocument'                                 => 'LinkPreviewType::Document',
      'linkPreviewTypeEmbeddedAnimationPlayer'                  => 'LinkPreviewType::EmbeddedAnimationPlayer',
      'linkPreviewTypeEmbeddedAudioPlayer'                      => 'LinkPreviewType::EmbeddedAudioPlayer',
      'linkPreviewTypeEmbeddedVideoPlayer'                      => 'LinkPreviewType::EmbeddedVideoPlayer',
      'linkPreviewTypeExternalAudio'                            => 'LinkPreviewType::ExternalAudio',
      'linkPreviewTypeExternalVideo'                            => 'LinkPreviewType::ExternalVideo',
      'linkPreviewTypeGiftAuction'                              => 'LinkPreviewType::GiftAuction',
      'linkPreviewTypeGiftCollection'                           => 'LinkPreviewType::GiftCollection',
      'linkPreviewTypeGroupCall'                                => 'LinkPreviewType::GroupCall',
      'linkPreviewTypeInvoice'                                  => 'LinkPreviewType::Invoice',
      'linkPreviewTypeLiveStory'                                => 'LinkPreviewType::LiveStory',
      'linkPreviewTypeMessage'                                  => 'LinkPreviewType::Message',
      'linkPreviewTypePhoto'                                    => 'LinkPreviewType::Photo',
      'linkPreviewTypePremiumGiftCode'                          => 'LinkPreviewType::PremiumGiftCode',
      'linkPreviewTypeShareableChatFolder'                      => 'LinkPreviewType::ShareableChatFolder',
      'linkPreviewTypeSticker'                                  => 'LinkPreviewType::Sticker',
      'linkPreviewTypeStickerSet'                               => 'LinkPreviewType::StickerSet',
      'linkPreviewTypeStory'                                    => 'LinkPreviewType::Story',
      'linkPreviewTypeStoryAlbum'                               => 'LinkPreviewType::StoryAlbum',
      'linkPreviewTypeSupergroupBoost'                          => 'LinkPreviewType::SupergroupBoost',
      'linkPreviewTypeTheme'                                    => 'LinkPreviewType::Theme',
      'linkPreviewTypeUnsupported'                              => 'LinkPreviewType::Unsupported',
      'linkPreviewTypeUpgradedGift'                             => 'LinkPreviewType::UpgradedGift',
      'linkPreviewTypeUser'                                     => 'LinkPreviewType::User',
      'linkPreviewTypeVideo'                                    => 'LinkPreviewType::Video',
      'linkPreviewTypeVideoChat'                                => 'LinkPreviewType::VideoChat',
      'linkPreviewTypeVideoNote'                                => 'LinkPreviewType::VideoNote',
      'linkPreviewTypeVoiceNote'                                => 'LinkPreviewType::VoiceNote',
      'linkPreviewTypeWebApp'                                   => 'LinkPreviewType::WebApp',
      'linkPreview'                                             => 'LinkPreview',
      'countryInfo'                                             => 'CountryInfo',
      'countries'                                               => 'Countries',
      'phoneNumberInfo'                                         => 'PhoneNumberInfo',
      'CollectibleItemType'                                     => 'CollectibleItemType',
      'collectibleItemTypeUsername'                             => 'CollectibleItemType::Username',
      'collectibleItemTypePhoneNumber'                          => 'CollectibleItemType::PhoneNumber',
      'collectibleItemInfo'                                     => 'CollectibleItemInfo',
      'bankCardActionOpenUrl'                                   => 'BankCardActionOpenUrl',
      'bankCardInfo'                                            => 'BankCardInfo',
      'address'                                                 => 'Address',
      'locationAddress'                                         => 'LocationAddress',
      'labeledPricePart'                                        => 'LabeledPricePart',
      'invoice'                                                 => 'Invoice',
      'orderInfo'                                               => 'OrderInfo',
      'shippingOption'                                          => 'ShippingOption',
      'savedCredentials'                                        => 'SavedCredentials',
      'InputCredentials'                                        => 'InputCredentials',
      'inputCredentialsSaved'                                   => 'InputCredentials::Saved',
      'inputCredentialsNew'                                     => 'InputCredentials::New',
      'inputCredentialsApplePay'                                => 'InputCredentials::ApplePay',
      'inputCredentialsGooglePay'                               => 'InputCredentials::GooglePay',
      'PaymentProvider'                                         => 'PaymentProvider',
      'paymentProviderSmartGlocal'                              => 'PaymentProvider::SmartGlocal',
      'paymentProviderStripe'                                   => 'PaymentProvider::Stripe',
      'paymentProviderOther'                                    => 'PaymentProvider::Other',
      'paymentOption'                                           => 'PaymentOption',
      'PaymentFormType'                                         => 'PaymentFormType',
      'paymentFormTypeRegular'                                  => 'PaymentFormType::Regular',
      'paymentFormTypeStars'                                    => 'PaymentFormType::Stars',
      'paymentFormTypeStarSubscription'                         => 'PaymentFormType::StarSubscription',
      'paymentForm'                                             => 'PaymentForm',
      'validatedOrderInfo'                                      => 'ValidatedOrderInfo',
      'paymentResult'                                           => 'PaymentResult',
      'PaymentReceiptType'                                      => 'PaymentReceiptType',
      'paymentReceiptTypeRegular'                               => 'PaymentReceiptType::Regular',
      'paymentReceiptTypeStars'                                 => 'PaymentReceiptType::Stars',
      'paymentReceipt'                                          => 'PaymentReceipt',
      'InputInvoice'                                            => 'InputInvoice',
      'inputInvoiceMessage'                                     => 'InputInvoice::Message',
      'inputInvoiceName'                                        => 'InputInvoice::Name',
      'inputInvoiceTelegram'                                    => 'InputInvoice::Telegram',
      'PaidMedia'                                               => 'PaidMedia',
      'paidMediaPreview'                                        => 'PaidMedia::Preview',
      'paidMediaPhoto'                                          => 'PaidMedia::Photo',
      'paidMediaVideo'                                          => 'PaidMedia::Video',
      'paidMediaUnsupported'                                    => 'PaidMedia::Unsupported',
      'giveawayParameters'                                      => 'GiveawayParameters',
      'datedFile'                                               => 'DatedFile',
      'PassportElementType'                                     => 'PassportElementType',
      'passportElementTypePersonalDetails'                      => 'PassportElementType::PersonalDetails',
      'passportElementTypePassport'                             => 'PassportElementType::Passport',
      'passportElementTypeDriverLicense'                        => 'PassportElementType::DriverLicense',
      'passportElementTypeIdentityCard'                         => 'PassportElementType::IdentityCard',
      'passportElementTypeInternalPassport'                     => 'PassportElementType::InternalPassport',
      'passportElementTypeAddress'                              => 'PassportElementType::Address',
      'passportElementTypeUtilityBill'                          => 'PassportElementType::UtilityBill',
      'passportElementTypeBankStatement'                        => 'PassportElementType::BankStatement',
      'passportElementTypeRentalAgreement'                      => 'PassportElementType::RentalAgreement',
      'passportElementTypePassportRegistration'                 => 'PassportElementType::PassportRegistration',
      'passportElementTypeTemporaryRegistration'                => 'PassportElementType::TemporaryRegistration',
      'passportElementTypePhoneNumber'                          => 'PassportElementType::PhoneNumber',
      'passportElementTypeEmailAddress'                         => 'PassportElementType::EmailAddress',
      'date'                                                    => 'Date',
      'personalDetails'                                         => 'PersonalDetails',
      'identityDocument'                                        => 'IdentityDocument',
      'inputIdentityDocument'                                   => 'InputIdentityDocument',
      'personalDocument'                                        => 'PersonalDocument',
      'inputPersonalDocument'                                   => 'InputPersonalDocument',
      'PassportElement'                                         => 'PassportElement',
      'passportElementPersonalDetails'                          => 'PassportElement::PersonalDetails',
      'passportElementPassport'                                 => 'PassportElement::Passport',
      'passportElementDriverLicense'                            => 'PassportElement::DriverLicense',
      'passportElementIdentityCard'                             => 'PassportElement::IdentityCard',
      'passportElementInternalPassport'                         => 'PassportElement::InternalPassport',
      'passportElementAddress'                                  => 'PassportElement::Address',
      'passportElementUtilityBill'                              => 'PassportElement::UtilityBill',
      'passportElementBankStatement'                            => 'PassportElement::BankStatement',
      'passportElementRentalAgreement'                          => 'PassportElement::RentalAgreement',
      'passportElementPassportRegistration'                     => 'PassportElement::PassportRegistration',
      'passportElementTemporaryRegistration'                    => 'PassportElement::TemporaryRegistration',
      'passportElementPhoneNumber'                              => 'PassportElement::PhoneNumber',
      'passportElementEmailAddress'                             => 'PassportElement::EmailAddress',
      'InputPassportElement'                                    => 'InputPassportElement',
      'inputPassportElementPersonalDetails'                     => 'InputPassportElement::PersonalDetails',
      'inputPassportElementPassport'                            => 'InputPassportElement::Passport',
      'inputPassportElementDriverLicense'                       => 'InputPassportElement::DriverLicense',
      'inputPassportElementIdentityCard'                        => 'InputPassportElement::IdentityCard',
      'inputPassportElementInternalPassport'                    => 'InputPassportElement::InternalPassport',
      'inputPassportElementAddress'                             => 'InputPassportElement::Address',
      'inputPassportElementUtilityBill'                         => 'InputPassportElement::UtilityBill',
      'inputPassportElementBankStatement'                       => 'InputPassportElement::BankStatement',
      'inputPassportElementRentalAgreement'                     => 'InputPassportElement::RentalAgreement',
      'inputPassportElementPassportRegistration'                => 'InputPassportElement::PassportRegistration',
      'inputPassportElementTemporaryRegistration'               => 'InputPassportElement::TemporaryRegistration',
      'inputPassportElementPhoneNumber'                         => 'InputPassportElement::PhoneNumber',
      'inputPassportElementEmailAddress'                        => 'InputPassportElement::EmailAddress',
      'passportElements'                                        => 'PassportElements',
      'PassportElementErrorSource'                              => 'PassportElementErrorSource',
      'passportElementErrorSourceUnspecified'                   => 'PassportElementErrorSource::Unspecified',
      'passportElementErrorSourceDataField'                     => 'PassportElementErrorSource::DataField',
      'passportElementErrorSourceFrontSide'                     => 'PassportElementErrorSource::FrontSide',
      'passportElementErrorSourceReverseSide'                   => 'PassportElementErrorSource::ReverseSide',
      'passportElementErrorSourceSelfie'                        => 'PassportElementErrorSource::Selfie',
      'passportElementErrorSourceTranslationFile'               => 'PassportElementErrorSource::TranslationFile',
      'passportElementErrorSourceTranslationFiles'              => 'PassportElementErrorSource::TranslationFiles',
      'passportElementErrorSourceFile'                          => 'PassportElementErrorSource::File',
      'passportElementErrorSourceFiles'                         => 'PassportElementErrorSource::Files',
      'passportElementError'                                    => 'PassportElementError',
      'passportSuitableElement'                                 => 'PassportSuitableElement',
      'passportRequiredElement'                                 => 'PassportRequiredElement',
      'passportAuthorizationForm'                               => 'PassportAuthorizationForm',
      'passportElementsWithErrors'                              => 'PassportElementsWithErrors',
      'encryptedCredentials'                                    => 'EncryptedCredentials',
      'encryptedPassportElement'                                => 'EncryptedPassportElement',
      'InputPassportElementErrorSource'                         => 'InputPassportElementErrorSource',
      'inputPassportElementErrorSourceUnspecified'              => 'InputPassportElementErrorSource::Unspecified',
      'inputPassportElementErrorSourceDataField'                => 'InputPassportElementErrorSource::DataField',
      'inputPassportElementErrorSourceFrontSide'                => 'InputPassportElementErrorSource::FrontSide',
      'inputPassportElementErrorSourceReverseSide'              => 'InputPassportElementErrorSource::ReverseSide',
      'inputPassportElementErrorSourceSelfie'                   => 'InputPassportElementErrorSource::Selfie',
      'inputPassportElementErrorSourceTranslationFile'          => 'InputPassportElementErrorSource::TranslationFile',
      'inputPassportElementErrorSourceTranslationFiles'         => 'InputPassportElementErrorSource::TranslationFiles',
      'inputPassportElementErrorSourceFile'                     => 'InputPassportElementErrorSource::File',
      'inputPassportElementErrorSourceFiles'                    => 'InputPassportElementErrorSource::Files',
      'inputPassportElementError'                               => 'InputPassportElementError',
      'MessageContent'                                          => 'MessageContent',
      'messageText'                                             => 'MessageContent::Text',
      'messageAnimation'                                        => 'MessageContent::Animation',
      'messageAudio'                                            => 'MessageContent::Audio',
      'messageDocument'                                         => 'MessageContent::Document',
      'messagePaidMedia'                                        => 'MessageContent::PaidMedia',
      'messagePhoto'                                            => 'MessageContent::Photo',
      'messageSticker'                                          => 'MessageContent::Sticker',
      'messageVideo'                                            => 'MessageContent::Video',
      'messageVideoNote'                                        => 'MessageContent::VideoNote',
      'messageVoiceNote'                                        => 'MessageContent::VoiceNote',
      'messageExpiredPhoto'                                     => 'MessageContent::ExpiredPhoto',
      'messageExpiredVideo'                                     => 'MessageContent::ExpiredVideo',
      'messageExpiredVideoNote'                                 => 'MessageContent::ExpiredVideoNote',
      'messageExpiredVoiceNote'                                 => 'MessageContent::ExpiredVoiceNote',
      'messageLocation'                                         => 'MessageContent::Location',
      'messageVenue'                                            => 'MessageContent::Venue',
      'messageContact'                                          => 'MessageContent::Contact',
      'messageAnimatedEmoji'                                    => 'MessageContent::AnimatedEmoji',
      'messageDice'                                             => 'MessageContent::Dice',
      'messageGame'                                             => 'MessageContent::Game',
      'messagePoll'                                             => 'MessageContent::Poll',
      'messageStory'                                            => 'MessageContent::Story',
      'messageChecklist'                                        => 'MessageContent::Checklist',
      'messageInvoice'                                          => 'MessageContent::Invoice',
      'messageCall'                                             => 'MessageContent::Call',
      'messageGroupCall'                                        => 'MessageContent::GroupCall',
      'messageVideoChatScheduled'                               => 'MessageContent::VideoChatScheduled',
      'messageVideoChatStarted'                                 => 'MessageContent::VideoChatStarted',
      'messageVideoChatEnded'                                   => 'MessageContent::VideoChatEnded',
      'messageInviteVideoChatParticipants'                      => 'MessageContent::InviteVideoChatParticipants',
      'messageBasicGroupChatCreate'                             => 'MessageContent::BasicGroupChatCreate',
      'messageSupergroupChatCreate'                             => 'MessageContent::SupergroupChatCreate',
      'messageChatChangeTitle'                                  => 'MessageContent::ChatChangeTitle',
      'messageChatChangePhoto'                                  => 'MessageContent::ChatChangePhoto',
      'messageChatDeletePhoto'                                  => 'MessageContent::ChatDeletePhoto',
      'messageChatAddMembers'                                   => 'MessageContent::ChatAddMembers',
      'messageChatJoinByLink'                                   => 'MessageContent::ChatJoinByLink',
      'messageChatJoinByRequest'                                => 'MessageContent::ChatJoinByRequest',
      'messageChatDeleteMember'                                 => 'MessageContent::ChatDeleteMember',
      'messageChatUpgradeTo'                                    => 'MessageContent::ChatUpgradeTo',
      'messageChatUpgradeFrom'                                  => 'MessageContent::ChatUpgradeFrom',
      'messagePinMessage'                                       => 'MessageContent::PinMessage',
      'messageScreenshotTaken'                                  => 'MessageContent::ScreenshotTaken',
      'messageChatSetBackground'                                => 'MessageContent::ChatSetBackground',
      'messageChatSetTheme'                                     => 'MessageContent::ChatSetTheme',
      'messageChatSetMessageAutoDeleteTime'                     => 'MessageContent::ChatSetMessageAutoDeleteTime',
      'messageChatBoost'                                        => 'MessageContent::ChatBoost',
      'messageForumTopicCreated'                                => 'MessageContent::ForumTopicCreated',
      'messageForumTopicEdited'                                 => 'MessageContent::ForumTopicEdited',
      'messageForumTopicIsClosedToggled'                        => 'MessageContent::ForumTopicIsClosedToggled',
      'messageForumTopicIsHiddenToggled'                        => 'MessageContent::ForumTopicIsHiddenToggled',
      'messageSuggestProfilePhoto'                              => 'MessageContent::SuggestProfilePhoto',
      'messageSuggestBirthdate'                                 => 'MessageContent::SuggestBirthdate',
      'messageCustomServiceAction'                              => 'MessageContent::CustomServiceAction',
      'messageGameScore'                                        => 'MessageContent::GameScore',
      'messagePaymentSuccessful'                                => 'MessageContent::PaymentSuccessful',
      'messagePaymentSuccessfulBot'                             => 'MessageContent::PaymentSuccessfulBot',
      'messagePaymentRefunded'                                  => 'MessageContent::PaymentRefunded',
      'messageGiftedPremium'                                    => 'MessageContent::GiftedPremium',
      'messagePremiumGiftCode'                                  => 'MessageContent::PremiumGiftCode',
      'messageGiveawayCreated'                                  => 'MessageContent::GiveawayCreated',
      'messageGiveaway'                                         => 'MessageContent::Giveaway',
      'messageGiveawayCompleted'                                => 'MessageContent::GiveawayCompleted',
      'messageGiveawayWinners'                                  => 'MessageContent::GiveawayWinners',
      'messageGiftedStars'                                      => 'MessageContent::GiftedStars',
      'messageGiftedTon'                                        => 'MessageContent::GiftedTon',
      'messageGiveawayPrizeStars'                               => 'MessageContent::GiveawayPrizeStars',
      'messageGift'                                             => 'MessageContent::Gift',
      'messageUpgradedGift'                                     => 'MessageContent::UpgradedGift',
      'messageRefundedUpgradedGift'                             => 'MessageContent::RefundedUpgradedGift',
      'messageUpgradedGiftPurchaseOffer'                        => 'MessageContent::UpgradedGiftPurchaseOffer',
      'messageUpgradedGiftPurchaseOfferDeclined'                => 'MessageContent::UpgradedGiftPurchaseOfferDeclined',
      'messagePaidMessagesRefunded'                             => 'MessageContent::PaidMessagesRefunded',
      'messagePaidMessagePriceChanged'                          => 'MessageContent::PaidMessagePriceChanged',
      'messageDirectMessagePriceChanged'                        => 'MessageContent::DirectMessagePriceChanged',
      'messageChecklistTasksDone'                               => 'MessageContent::ChecklistTasksDone',
      'messageChecklistTasksAdded'                              => 'MessageContent::ChecklistTasksAdded',
      'messageSuggestedPostApprovalFailed'                      => 'MessageContent::SuggestedPostApprovalFailed',
      'messageSuggestedPostApproved'                            => 'MessageContent::SuggestedPostApproved',
      'messageSuggestedPostDeclined'                            => 'MessageContent::SuggestedPostDeclined',
      'messageSuggestedPostPaid'                                => 'MessageContent::SuggestedPostPaid',
      'messageSuggestedPostRefunded'                            => 'MessageContent::SuggestedPostRefunded',
      'messageContactRegistered'                                => 'MessageContent::ContactRegistered',
      'messageUsersShared'                                      => 'MessageContent::UsersShared',
      'messageChatShared'                                       => 'MessageContent::ChatShared',
      'messageBotWriteAccessAllowed'                            => 'MessageContent::BotWriteAccessAllowed',
      'messageWebAppDataSent'                                   => 'MessageContent::WebAppDataSent',
      'messageWebAppDataReceived'                               => 'MessageContent::WebAppDataReceived',
      'messagePassportDataSent'                                 => 'MessageContent::PassportDataSent',
      'messagePassportDataReceived'                             => 'MessageContent::PassportDataReceived',
      'messageProximityAlertTriggered'                          => 'MessageContent::ProximityAlertTriggered',
      'messageUnsupported'                                      => 'MessageContent::Unsupported',
      'TextEntityType'                                          => 'TextEntityType',
      'textEntityTypeMention'                                   => 'TextEntityType::Mention',
      'textEntityTypeHashtag'                                   => 'TextEntityType::Hashtag',
      'textEntityTypeCashtag'                                   => 'TextEntityType::Cashtag',
      'textEntityTypeBotCommand'                                => 'TextEntityType::BotCommand',
      'textEntityTypeUrl'                                       => 'TextEntityType::Url',
      'textEntityTypeEmailAddress'                              => 'TextEntityType::EmailAddress',
      'textEntityTypePhoneNumber'                               => 'TextEntityType::PhoneNumber',
      'textEntityTypeBankCardNumber'                            => 'TextEntityType::BankCardNumber',
      'textEntityTypeBold'                                      => 'TextEntityType::Bold',
      'textEntityTypeItalic'                                    => 'TextEntityType::Italic',
      'textEntityTypeUnderline'                                 => 'TextEntityType::Underline',
      'textEntityTypeStrikethrough'                             => 'TextEntityType::Strikethrough',
      'textEntityTypeSpoiler'                                   => 'TextEntityType::Spoiler',
      'textEntityTypeCode'                                      => 'TextEntityType::Code',
      'textEntityTypePre'                                       => 'TextEntityType::Pre',
      'textEntityTypePreCode'                                   => 'TextEntityType::PreCode',
      'textEntityTypeBlockQuote'                                => 'TextEntityType::BlockQuote',
      'textEntityTypeExpandableBlockQuote'                      => 'TextEntityType::ExpandableBlockQuote',
      'textEntityTypeTextUrl'                                   => 'TextEntityType::TextUrl',
      'textEntityTypeMentionName'                               => 'TextEntityType::MentionName',
      'textEntityTypeCustomEmoji'                               => 'TextEntityType::CustomEmoji',
      'textEntityTypeMediaTimestamp'                            => 'TextEntityType::MediaTimestamp',
      'inputThumbnail'                                          => 'InputThumbnail',
      'InputPaidMediaType'                                      => 'InputPaidMediaType',
      'inputPaidMediaTypePhoto'                                 => 'InputPaidMediaType::Photo',
      'inputPaidMediaTypeVideo'                                 => 'InputPaidMediaType::Video',
      'inputPaidMedia'                                          => 'InputPaidMedia',
      'MessageSchedulingState'                                  => 'MessageSchedulingState',
      'messageSchedulingStateSendAtDate'                        => 'MessageSchedulingState::SendAtDate',
      'messageSchedulingStateSendWhenOnline'                    => 'MessageSchedulingState::SendWhenOnline',
      'messageSchedulingStateSendWhenVideoProcessed'            => 'MessageSchedulingState::SendWhenVideoProcessed',
      'MessageSelfDestructType'                                 => 'MessageSelfDestructType',
      'messageSelfDestructTypeTimer'                            => 'MessageSelfDestructType::Timer',
      'messageSelfDestructTypeImmediately'                      => 'MessageSelfDestructType::Immediately',
      'messageSendOptions'                                      => 'MessageSendOptions',
      'messageCopyOptions'                                      => 'MessageCopyOptions',
      'InputMessageContent'                                     => 'InputMessageContent',
      'inputMessageText'                                        => 'InputMessageContent::Text',
      'inputMessageAnimation'                                   => 'InputMessageContent::Animation',
      'inputMessageAudio'                                       => 'InputMessageContent::Audio',
      'inputMessageDocument'                                    => 'InputMessageContent::Document',
      'inputMessagePaidMedia'                                   => 'InputMessageContent::PaidMedia',
      'inputMessagePhoto'                                       => 'InputMessageContent::Photo',
      'inputMessageSticker'                                     => 'InputMessageContent::Sticker',
      'inputMessageVideo'                                       => 'InputMessageContent::Video',
      'inputMessageVideoNote'                                   => 'InputMessageContent::VideoNote',
      'inputMessageVoiceNote'                                   => 'InputMessageContent::VoiceNote',
      'inputMessageLocation'                                    => 'InputMessageContent::Location',
      'inputMessageVenue'                                       => 'InputMessageContent::Venue',
      'inputMessageContact'                                     => 'InputMessageContent::Contact',
      'inputMessageDice'                                        => 'InputMessageContent::Dice',
      'inputMessageGame'                                        => 'InputMessageContent::Game',
      'inputMessageInvoice'                                     => 'InputMessageContent::Invoice',
      'inputMessagePoll'                                        => 'InputMessageContent::Poll',
      'inputMessageStory'                                       => 'InputMessageContent::Story',
      'inputMessageChecklist'                                   => 'InputMessageContent::Checklist',
      'inputMessageForwarded'                                   => 'InputMessageContent::Forwarded',
      'messageProperties'                                       => 'MessageProperties',
      'SearchMessagesFilter'                                    => 'SearchMessagesFilter',
      'searchMessagesFilterEmpty'                               => 'SearchMessagesFilter::Empty',
      'searchMessagesFilterAnimation'                           => 'SearchMessagesFilter::Animation',
      'searchMessagesFilterAudio'                               => 'SearchMessagesFilter::Audio',
      'searchMessagesFilterDocument'                            => 'SearchMessagesFilter::Document',
      'searchMessagesFilterPhoto'                               => 'SearchMessagesFilter::Photo',
      'searchMessagesFilterVideo'                               => 'SearchMessagesFilter::Video',
      'searchMessagesFilterVoiceNote'                           => 'SearchMessagesFilter::VoiceNote',
      'searchMessagesFilterPhotoAndVideo'                       => 'SearchMessagesFilter::PhotoAndVideo',
      'searchMessagesFilterUrl'                                 => 'SearchMessagesFilter::Url',
      'searchMessagesFilterChatPhoto'                           => 'SearchMessagesFilter::ChatPhoto',
      'searchMessagesFilterVideoNote'                           => 'SearchMessagesFilter::VideoNote',
      'searchMessagesFilterVoiceAndVideoNote'                   => 'SearchMessagesFilter::VoiceAndVideoNote',
      'searchMessagesFilterMention'                             => 'SearchMessagesFilter::Mention',
      'searchMessagesFilterUnreadMention'                       => 'SearchMessagesFilter::UnreadMention',
      'searchMessagesFilterUnreadReaction'                      => 'SearchMessagesFilter::UnreadReaction',
      'searchMessagesFilterFailedToSend'                        => 'SearchMessagesFilter::FailedToSend',
      'searchMessagesFilterPinned'                              => 'SearchMessagesFilter::Pinned',
      'SearchMessagesChatTypeFilter'                            => 'SearchMessagesChatTypeFilter',
      'searchMessagesChatTypeFilterPrivate'                     => 'SearchMessagesChatTypeFilter::Private',
      'searchMessagesChatTypeFilterGroup'                       => 'SearchMessagesChatTypeFilter::Group',
      'searchMessagesChatTypeFilterChannel'                     => 'SearchMessagesChatTypeFilter::Channel',
      'ChatAction'                                              => 'ChatAction',
      'chatActionTyping'                                        => 'ChatAction::Typing',
      'chatActionRecordingVideo'                                => 'ChatAction::RecordingVideo',
      'chatActionUploadingVideo'                                => 'ChatAction::UploadingVideo',
      'chatActionRecordingVoiceNote'                            => 'ChatAction::RecordingVoiceNote',
      'chatActionUploadingVoiceNote'                            => 'ChatAction::UploadingVoiceNote',
      'chatActionUploadingPhoto'                                => 'ChatAction::UploadingPhoto',
      'chatActionUploadingDocument'                             => 'ChatAction::UploadingDocument',
      'chatActionChoosingSticker'                               => 'ChatAction::ChoosingSticker',
      'chatActionChoosingLocation'                              => 'ChatAction::ChoosingLocation',
      'chatActionChoosingContact'                               => 'ChatAction::ChoosingContact',
      'chatActionStartPlayingGame'                              => 'ChatAction::StartPlayingGame',
      'chatActionRecordingVideoNote'                            => 'ChatAction::RecordingVideoNote',
      'chatActionUploadingVideoNote'                            => 'ChatAction::UploadingVideoNote',
      'chatActionWatchingAnimations'                            => 'ChatAction::WatchingAnimations',
      'chatActionCancel'                                        => 'ChatAction::Cancel',
      'UserStatus'                                              => 'UserStatus',
      'userStatusEmpty'                                         => 'UserStatus::Empty',
      'userStatusOnline'                                        => 'UserStatus::Online',
      'userStatusOffline'                                       => 'UserStatus::Offline',
      'userStatusRecently'                                      => 'UserStatus::Recently',
      'userStatusLastWeek'                                      => 'UserStatus::LastWeek',
      'userStatusLastMonth'                                     => 'UserStatus::LastMonth',
      'emojiKeyword'                                            => 'EmojiKeyword',
      'emojiKeywords'                                           => 'EmojiKeywords',
      'stickers'                                                => 'Stickers',
      'emojis'                                                  => 'Emojis',
      'stickerSet'                                              => 'StickerSet',
      'stickerSetInfo'                                          => 'StickerSetInfo',
      'stickerSets'                                             => 'StickerSets',
      'trendingStickerSets'                                     => 'TrendingStickerSets',
      'EmojiCategorySource'                                     => 'EmojiCategorySource',
      'emojiCategorySourceSearch'                               => 'EmojiCategorySource::Search',
      'emojiCategorySourcePremium'                              => 'EmojiCategorySource::Premium',
      'emojiCategory'                                           => 'EmojiCategory',
      'emojiCategories'                                         => 'EmojiCategories',
      'EmojiCategoryType'                                       => 'EmojiCategoryType',
      'emojiCategoryTypeDefault'                                => 'EmojiCategoryType::Default',
      'emojiCategoryTypeRegularStickers'                        => 'EmojiCategoryType::RegularStickers',
      'emojiCategoryTypeEmojiStatus'                            => 'EmojiCategoryType::EmojiStatus',
      'emojiCategoryTypeChatPhoto'                              => 'EmojiCategoryType::ChatPhoto',
      'currentWeather'                                          => 'CurrentWeather',
      'storyAreaPosition'                                       => 'StoryAreaPosition',
      'StoryAreaType'                                           => 'StoryAreaType',
      'storyAreaTypeLocation'                                   => 'StoryAreaType::Location',
      'storyAreaTypeVenue'                                      => 'StoryAreaType::Venue',
      'storyAreaTypeSuggestedReaction'                          => 'StoryAreaType::SuggestedReaction',
      'storyAreaTypeMessage'                                    => 'StoryAreaType::Message',
      'storyAreaTypeLink'                                       => 'StoryAreaType::Link',
      'storyAreaTypeWeather'                                    => 'StoryAreaType::Weather',
      'storyAreaTypeUpgradedGift'                               => 'StoryAreaType::UpgradedGift',
      'storyArea'                                               => 'StoryArea',
      'InputStoryAreaType'                                      => 'InputStoryAreaType',
      'inputStoryAreaTypeLocation'                              => 'InputStoryAreaType::Location',
      'inputStoryAreaTypeFoundVenue'                            => 'InputStoryAreaType::FoundVenue',
      'inputStoryAreaTypePreviousVenue'                         => 'InputStoryAreaType::PreviousVenue',
      'inputStoryAreaTypeSuggestedReaction'                     => 'InputStoryAreaType::SuggestedReaction',
      'inputStoryAreaTypeMessage'                               => 'InputStoryAreaType::Message',
      'inputStoryAreaTypeLink'                                  => 'InputStoryAreaType::Link',
      'inputStoryAreaTypeWeather'                               => 'InputStoryAreaType::Weather',
      'inputStoryAreaTypeUpgradedGift'                          => 'InputStoryAreaType::UpgradedGift',
      'inputStoryArea'                                          => 'InputStoryArea',
      'inputStoryAreas'                                         => 'InputStoryAreas',
      'storyVideo'                                              => 'StoryVideo',
      'StoryContent'                                            => 'StoryContent',
      'storyContentPhoto'                                       => 'StoryContent::Photo',
      'storyContentVideo'                                       => 'StoryContent::Video',
      'storyContentLive'                                        => 'StoryContent::Live',
      'storyContentUnsupported'                                 => 'StoryContent::Unsupported',
      'InputStoryContent'                                       => 'InputStoryContent',
      'inputStoryContentPhoto'                                  => 'InputStoryContent::Photo',
      'inputStoryContentVideo'                                  => 'InputStoryContent::Video',
      'StoryList'                                               => 'StoryList',
      'storyListMain'                                           => 'StoryList::Main',
      'storyListArchive'                                        => 'StoryList::Archive',
      'StoryOrigin'                                             => 'StoryOrigin',
      'storyOriginPublicStory'                                  => 'StoryOrigin::PublicStory',
      'storyOriginHiddenUser'                                   => 'StoryOrigin::HiddenUser',
      'storyRepostInfo'                                         => 'StoryRepostInfo',
      'storyInteractionInfo'                                    => 'StoryInteractionInfo',
      'story'                                                   => 'Story',
      'stories'                                                 => 'Stories',
      'foundStories'                                            => 'FoundStories',
      'storyAlbum'                                              => 'StoryAlbum',
      'storyAlbums'                                             => 'StoryAlbums',
      'storyFullId'                                             => 'StoryFullId',
      'storyInfo'                                               => 'StoryInfo',
      'chatActiveStories'                                       => 'ChatActiveStories',
      'StoryInteractionType'                                    => 'StoryInteractionType',
      'storyInteractionTypeView'                                => 'StoryInteractionType::View',
      'storyInteractionTypeForward'                             => 'StoryInteractionType::Forward',
      'storyInteractionTypeRepost'                              => 'StoryInteractionType::Repost',
      'storyInteraction'                                        => 'StoryInteraction',
      'storyInteractions'                                       => 'StoryInteractions',
      'quickReplyMessage'                                       => 'QuickReplyMessage',
      'quickReplyMessages'                                      => 'QuickReplyMessages',
      'quickReplyShortcut'                                      => 'QuickReplyShortcut',
      'PublicForward'                                           => 'PublicForward',
      'publicForwardMessage'                                    => 'PublicForward::Message',
      'publicForwardStory'                                      => 'PublicForward::Story',
      'publicForwards'                                          => 'PublicForwards',
      'botMediaPreview'                                         => 'BotMediaPreview',
      'botMediaPreviews'                                        => 'BotMediaPreviews',
      'botMediaPreviewInfo'                                     => 'BotMediaPreviewInfo',
      'chatBoostLevelFeatures'                                  => 'ChatBoostLevelFeatures',
      'chatBoostFeatures'                                       => 'ChatBoostFeatures',
      'ChatBoostSource'                                         => 'ChatBoostSource',
      'chatBoostSourceGiftCode'                                 => 'ChatBoostSource::GiftCode',
      'chatBoostSourceGiveaway'                                 => 'ChatBoostSource::Giveaway',
      'chatBoostSourcePremium'                                  => 'ChatBoostSource::Premium',
      'prepaidGiveaway'                                         => 'PrepaidGiveaway',
      'chatBoostStatus'                                         => 'ChatBoostStatus',
      'chatBoost'                                               => 'ChatBoost',
      'foundChatBoosts'                                         => 'FoundChatBoosts',
      'chatBoostSlot'                                           => 'ChatBoostSlot',
      'chatBoostSlots'                                          => 'ChatBoostSlots',
      'ResendCodeReason'                                        => 'ResendCodeReason',
      'resendCodeReasonUserRequest'                             => 'ResendCodeReason::UserRequest',
      'resendCodeReasonVerificationFailed'                      => 'ResendCodeReason::VerificationFailed',
      'CallDiscardReason'                                       => 'CallDiscardReason',
      'callDiscardReasonEmpty'                                  => 'CallDiscardReason::Empty',
      'callDiscardReasonMissed'                                 => 'CallDiscardReason::Missed',
      'callDiscardReasonDeclined'                               => 'CallDiscardReason::Declined',
      'callDiscardReasonDisconnected'                           => 'CallDiscardReason::Disconnected',
      'callDiscardReasonHungUp'                                 => 'CallDiscardReason::HungUp',
      'callDiscardReasonUpgradeToGroupCall'                     => 'CallDiscardReason::UpgradeToGroupCall',
      'callProtocol'                                            => 'CallProtocol',
      'CallServerType'                                          => 'CallServerType',
      'callServerTypeTelegramReflector'                         => 'CallServerType::TelegramReflector',
      'callServerTypeWebrtc'                                    => 'CallServerType::Webrtc',
      'callServer'                                              => 'CallServer',
      'callId'                                                  => 'CallId',
      'groupCallId'                                             => 'GroupCallId',
      'CallState'                                               => 'CallState',
      'callStatePending'                                        => 'CallState::Pending',
      'callStateExchangingKeys'                                 => 'CallState::ExchangingKeys',
      'callStateReady'                                          => 'CallState::Ready',
      'callStateHangingUp'                                      => 'CallState::HangingUp',
      'callStateDiscarded'                                      => 'CallState::Discarded',
      'callStateError'                                          => 'CallState::Error',
      'groupCallJoinParameters'                                 => 'GroupCallJoinParameters',
      'GroupCallVideoQuality'                                   => 'GroupCallVideoQuality',
      'groupCallVideoQualityThumbnail'                          => 'GroupCallVideoQuality::Thumbnail',
      'groupCallVideoQualityMedium'                             => 'GroupCallVideoQuality::Medium',
      'groupCallVideoQualityFull'                               => 'GroupCallVideoQuality::Full',
      'groupCallStream'                                         => 'GroupCallStream',
      'groupCallStreams'                                        => 'GroupCallStreams',
      'rtmpUrl'                                                 => 'RtmpUrl',
      'groupCallRecentSpeaker'                                  => 'GroupCallRecentSpeaker',
      'groupCall'                                               => 'GroupCall',
      'groupCallVideoSourceGroup'                               => 'GroupCallVideoSourceGroup',
      'groupCallParticipantVideoInfo'                           => 'GroupCallParticipantVideoInfo',
      'groupCallParticipant'                                    => 'GroupCallParticipant',
      'groupCallParticipants'                                   => 'GroupCallParticipants',
      'groupCallInfo'                                           => 'GroupCallInfo',
      'groupCallMessage'                                        => 'GroupCallMessage',
      'groupCallMessageLevel'                                   => 'GroupCallMessageLevel',
      'InviteGroupCallParticipantResult'                        => 'InviteGroupCallParticipantResult',
      'inviteGroupCallParticipantResultUserPrivacyRestricted'   => 'InviteGroupCallParticipantResult::UserPrivacyRestricted',
      'inviteGroupCallParticipantResultUserAlreadyParticipant'  => 'InviteGroupCallParticipantResult::UserAlreadyParticipant',
      'inviteGroupCallParticipantResultUserWasBanned'           => 'InviteGroupCallParticipantResult::UserWasBanned',
      'inviteGroupCallParticipantResultSuccess'                 => 'InviteGroupCallParticipantResult::Success',
      'GroupCallDataChannel'                                    => 'GroupCallDataChannel',
      'groupCallDataChannelMain'                                => 'GroupCallDataChannel::Main',
      'groupCallDataChannelScreenSharing'                       => 'GroupCallDataChannel::ScreenSharing',
      'InputGroupCall'                                          => 'InputGroupCall',
      'inputGroupCallLink'                                      => 'InputGroupCall::Link',
      'inputGroupCallMessage'                                   => 'InputGroupCall::Message',
      'CallProblem'                                             => 'CallProblem',
      'callProblemEcho'                                         => 'CallProblem::Echo',
      'callProblemNoise'                                        => 'CallProblem::Noise',
      'callProblemInterruptions'                                => 'CallProblem::Interruptions',
      'callProblemDistortedSpeech'                              => 'CallProblem::DistortedSpeech',
      'callProblemSilentLocal'                                  => 'CallProblem::SilentLocal',
      'callProblemSilentRemote'                                 => 'CallProblem::SilentRemote',
      'callProblemDropped'                                      => 'CallProblem::Dropped',
      'callProblemDistortedVideo'                               => 'CallProblem::DistortedVideo',
      'callProblemPixelatedVideo'                               => 'CallProblem::PixelatedVideo',
      'call'                                                    => 'Call',
      'FirebaseAuthenticationSettings'                          => 'FirebaseAuthenticationSettings',
      'firebaseAuthenticationSettingsAndroid'                   => 'FirebaseAuthenticationSettings::Android',
      'firebaseAuthenticationSettingsIos'                       => 'FirebaseAuthenticationSettings::Ios',
      'phoneNumberAuthenticationSettings'                       => 'PhoneNumberAuthenticationSettings',
      'addedReaction'                                           => 'AddedReaction',
      'addedReactions'                                          => 'AddedReactions',
      'availableReaction'                                       => 'AvailableReaction',
      'availableReactions'                                      => 'AvailableReactions',
      'emojiReaction'                                           => 'EmojiReaction',
      'ReactionUnavailabilityReason'                            => 'ReactionUnavailabilityReason',
      'reactionUnavailabilityReasonAnonymousAdministrator'      => 'ReactionUnavailabilityReason::AnonymousAdministrator',
      'reactionUnavailabilityReasonGuest'                       => 'ReactionUnavailabilityReason::Guest',
      'animations'                                              => 'Animations',
      'DiceStickers'                                            => 'DiceStickers',
      'diceStickersRegular'                                     => 'DiceStickers::Regular',
      'diceStickersSlotMachine'                                 => 'DiceStickers::SlotMachine',
      'importedContact'                                         => 'ImportedContact',
      'importedContacts'                                        => 'ImportedContacts',
      'SpeechRecognitionResult'                                 => 'SpeechRecognitionResult',
      'speechRecognitionResultPending'                          => 'SpeechRecognitionResult::Pending',
      'speechRecognitionResultText'                             => 'SpeechRecognitionResult::Text',
      'speechRecognitionResultError'                            => 'SpeechRecognitionResult::Error',
      'businessConnection'                                      => 'BusinessConnection',
      'attachmentMenuBotColor'                                  => 'AttachmentMenuBotColor',
      'attachmentMenuBot'                                       => 'AttachmentMenuBot',
      'sentWebAppMessage'                                       => 'SentWebAppMessage',
      'BotWriteAccessAllowReason'                               => 'BotWriteAccessAllowReason',
      'botWriteAccessAllowReasonConnectedWebsite'               => 'BotWriteAccessAllowReason::ConnectedWebsite',
      'botWriteAccessAllowReasonAddedToAttachmentMenu'          => 'BotWriteAccessAllowReason::AddedToAttachmentMenu',
      'botWriteAccessAllowReasonLaunchedWebApp'                 => 'BotWriteAccessAllowReason::LaunchedWebApp',
      'botWriteAccessAllowReasonAcceptedRequest'                => 'BotWriteAccessAllowReason::AcceptedRequest',
      'httpUrl'                                                 => 'HttpUrl',
      'userLink'                                                => 'UserLink',
      'targetChatTypes'                                         => 'TargetChatTypes',
      'TargetChat'                                              => 'TargetChat',
      'targetChatCurrent'                                       => 'TargetChat::Current',
      'targetChatChosen'                                        => 'TargetChat::Chosen',
      'targetChatInternalLink'                                  => 'TargetChat::InternalLink',
      'InputInlineQueryResult'                                  => 'InputInlineQueryResult',
      'inputInlineQueryResultAnimation'                         => 'InputInlineQueryResult::Animation',
      'inputInlineQueryResultArticle'                           => 'InputInlineQueryResult::Article',
      'inputInlineQueryResultAudio'                             => 'InputInlineQueryResult::Audio',
      'inputInlineQueryResultContact'                           => 'InputInlineQueryResult::Contact',
      'inputInlineQueryResultDocument'                          => 'InputInlineQueryResult::Document',
      'inputInlineQueryResultGame'                              => 'InputInlineQueryResult::Game',
      'inputInlineQueryResultLocation'                          => 'InputInlineQueryResult::Location',
      'inputInlineQueryResultPhoto'                             => 'InputInlineQueryResult::Photo',
      'inputInlineQueryResultSticker'                           => 'InputInlineQueryResult::Sticker',
      'inputInlineQueryResultVenue'                             => 'InputInlineQueryResult::Venue',
      'inputInlineQueryResultVideo'                             => 'InputInlineQueryResult::Video',
      'inputInlineQueryResultVoiceNote'                         => 'InputInlineQueryResult::VoiceNote',
      'InlineQueryResult'                                       => 'InlineQueryResult',
      'inlineQueryResultArticle'                                => 'InlineQueryResult::Article',
      'inlineQueryResultContact'                                => 'InlineQueryResult::Contact',
      'inlineQueryResultLocation'                               => 'InlineQueryResult::Location',
      'inlineQueryResultVenue'                                  => 'InlineQueryResult::Venue',
      'inlineQueryResultGame'                                   => 'InlineQueryResult::Game',
      'inlineQueryResultAnimation'                              => 'InlineQueryResult::Animation',
      'inlineQueryResultAudio'                                  => 'InlineQueryResult::Audio',
      'inlineQueryResultDocument'                               => 'InlineQueryResult::Document',
      'inlineQueryResultPhoto'                                  => 'InlineQueryResult::Photo',
      'inlineQueryResultSticker'                                => 'InlineQueryResult::Sticker',
      'inlineQueryResultVideo'                                  => 'InlineQueryResult::Video',
      'inlineQueryResultVoiceNote'                              => 'InlineQueryResult::VoiceNote',
      'InlineQueryResultsButtonType'                            => 'InlineQueryResultsButtonType',
      'inlineQueryResultsButtonTypeStartBot'                    => 'InlineQueryResultsButtonType::StartBot',
      'inlineQueryResultsButtonTypeWebApp'                      => 'InlineQueryResultsButtonType::WebApp',
      'inlineQueryResultsButton'                                => 'InlineQueryResultsButton',
      'inlineQueryResults'                                      => 'InlineQueryResults',
      'preparedInlineMessageId'                                 => 'PreparedInlineMessageId',
      'preparedInlineMessage'                                   => 'PreparedInlineMessage',
      'CallbackQueryPayload'                                    => 'CallbackQueryPayload',
      'callbackQueryPayloadData'                                => 'CallbackQueryPayload::Data',
      'callbackQueryPayloadDataWithPassword'                    => 'CallbackQueryPayload::DataWithPassword',
      'callbackQueryPayloadGame'                                => 'CallbackQueryPayload::Game',
      'callbackQueryAnswer'                                     => 'CallbackQueryAnswer',
      'customRequestResult'                                     => 'CustomRequestResult',
      'gameHighScore'                                           => 'GameHighScore',
      'gameHighScores'                                          => 'GameHighScores',
      'ChatEventAction'                                         => 'ChatEventAction',
      'chatEventMessageEdited'                                  => 'ChatEventAction::MessageEdited',
      'chatEventMessageDeleted'                                 => 'ChatEventAction::MessageDeleted',
      'chatEventMessagePinned'                                  => 'ChatEventAction::MessagePinned',
      'chatEventMessageUnpinned'                                => 'ChatEventAction::MessageUnpinned',
      'chatEventPollStopped'                                    => 'ChatEventAction::PollStopped',
      'chatEventMemberJoined'                                   => 'ChatEventAction::MemberJoined',
      'chatEventMemberJoinedByInviteLink'                       => 'ChatEventAction::MemberJoinedByInviteLink',
      'chatEventMemberJoinedByRequest'                          => 'ChatEventAction::MemberJoinedByRequest',
      'chatEventMemberInvited'                                  => 'ChatEventAction::MemberInvited',
      'chatEventMemberLeft'                                     => 'ChatEventAction::MemberLeft',
      'chatEventMemberPromoted'                                 => 'ChatEventAction::MemberPromoted',
      'chatEventMemberRestricted'                               => 'ChatEventAction::MemberRestricted',
      'chatEventMemberSubscriptionExtended'                     => 'ChatEventAction::MemberSubscriptionExtended',
      'chatEventAvailableReactionsChanged'                      => 'ChatEventAction::AvailableReactionsChanged',
      'chatEventBackgroundChanged'                              => 'ChatEventAction::BackgroundChanged',
      'chatEventDescriptionChanged'                             => 'ChatEventAction::DescriptionChanged',
      'chatEventEmojiStatusChanged'                             => 'ChatEventAction::EmojiStatusChanged',
      'chatEventLinkedChatChanged'                              => 'ChatEventAction::LinkedChatChanged',
      'chatEventLocationChanged'                                => 'ChatEventAction::LocationChanged',
      'chatEventMessageAutoDeleteTimeChanged'                   => 'ChatEventAction::MessageAutoDeleteTimeChanged',
      'chatEventPermissionsChanged'                             => 'ChatEventAction::PermissionsChanged',
      'chatEventPhotoChanged'                                   => 'ChatEventAction::PhotoChanged',
      'chatEventSlowModeDelayChanged'                           => 'ChatEventAction::SlowModeDelayChanged',
      'chatEventStickerSetChanged'                              => 'ChatEventAction::StickerSetChanged',
      'chatEventCustomEmojiStickerSetChanged'                   => 'ChatEventAction::CustomEmojiStickerSetChanged',
      'chatEventTitleChanged'                                   => 'ChatEventAction::TitleChanged',
      'chatEventUsernameChanged'                                => 'ChatEventAction::UsernameChanged',
      'chatEventActiveUsernamesChanged'                         => 'ChatEventAction::ActiveUsernamesChanged',
      'chatEventAccentColorChanged'                             => 'ChatEventAction::AccentColorChanged',
      'chatEventProfileAccentColorChanged'                      => 'ChatEventAction::ProfileAccentColorChanged',
      'chatEventHasProtectedContentToggled'                     => 'ChatEventAction::HasProtectedContentToggled',
      'chatEventInvitesToggled'                                 => 'ChatEventAction::InvitesToggled',
      'chatEventIsAllHistoryAvailableToggled'                   => 'ChatEventAction::IsAllHistoryAvailableToggled',
      'chatEventHasAggressiveAntiSpamEnabledToggled'            => 'ChatEventAction::HasAggressiveAntiSpamEnabledToggled',
      'chatEventSignMessagesToggled'                            => 'ChatEventAction::SignMessagesToggled',
      'chatEventShowMessageSenderToggled'                       => 'ChatEventAction::ShowMessageSenderToggled',
      'chatEventAutomaticTranslationToggled'                    => 'ChatEventAction::AutomaticTranslationToggled',
      'chatEventInviteLinkEdited'                               => 'ChatEventAction::InviteLinkEdited',
      'chatEventInviteLinkRevoked'                              => 'ChatEventAction::InviteLinkRevoked',
      'chatEventInviteLinkDeleted'                              => 'ChatEventAction::InviteLinkDeleted',
      'chatEventVideoChatCreated'                               => 'ChatEventAction::VideoChatCreated',
      'chatEventVideoChatEnded'                                 => 'ChatEventAction::VideoChatEnded',
      'chatEventVideoChatMuteNewParticipantsToggled'            => 'ChatEventAction::VideoChatMuteNewParticipantsToggled',
      'chatEventVideoChatParticipantIsMutedToggled'             => 'ChatEventAction::VideoChatParticipantIsMutedToggled',
      'chatEventVideoChatParticipantVolumeLevelChanged'         => 'ChatEventAction::VideoChatParticipantVolumeLevelChanged',
      'chatEventIsForumToggled'                                 => 'ChatEventAction::IsForumToggled',
      'chatEventForumTopicCreated'                              => 'ChatEventAction::ForumTopicCreated',
      'chatEventForumTopicEdited'                               => 'ChatEventAction::ForumTopicEdited',
      'chatEventForumTopicToggleIsClosed'                       => 'ChatEventAction::ForumTopicToggleIsClosed',
      'chatEventForumTopicToggleIsHidden'                       => 'ChatEventAction::ForumTopicToggleIsHidden',
      'chatEventForumTopicDeleted'                              => 'ChatEventAction::ForumTopicDeleted',
      'chatEventForumTopicPinned'                               => 'ChatEventAction::ForumTopicPinned',
      'chatEvent'                                               => 'ChatEvent',
      'chatEvents'                                              => 'ChatEvents',
      'chatEventLogFilters'                                     => 'ChatEventLogFilters',
      'LanguagePackStringValue'                                 => 'LanguagePackStringValue',
      'languagePackStringValueOrdinary'                         => 'LanguagePackStringValue::Ordinary',
      'languagePackStringValuePluralized'                       => 'LanguagePackStringValue::Pluralized',
      'languagePackStringValueDeleted'                          => 'LanguagePackStringValue::Deleted',
      'languagePackString'                                      => 'LanguagePackString',
      'languagePackStrings'                                     => 'LanguagePackStrings',
      'languagePackInfo'                                        => 'LanguagePackInfo',
      'localizationTargetInfo'                                  => 'LocalizationTargetInfo',
      'PremiumLimitType'                                        => 'PremiumLimitType',
      'premiumLimitTypeSupergroupCount'                         => 'PremiumLimitType::SupergroupCount',
      'premiumLimitTypePinnedChatCount'                         => 'PremiumLimitType::PinnedChatCount',
      'premiumLimitTypeCreatedPublicChatCount'                  => 'PremiumLimitType::CreatedPublicChatCount',
      'premiumLimitTypeSavedAnimationCount'                     => 'PremiumLimitType::SavedAnimationCount',
      'premiumLimitTypeFavoriteStickerCount'                    => 'PremiumLimitType::FavoriteStickerCount',
      'premiumLimitTypeChatFolderCount'                         => 'PremiumLimitType::ChatFolderCount',
      'premiumLimitTypeChatFolderChosenChatCount'               => 'PremiumLimitType::ChatFolderChosenChatCount',
      'premiumLimitTypePinnedArchivedChatCount'                 => 'PremiumLimitType::PinnedArchivedChatCount',
      'premiumLimitTypePinnedSavedMessagesTopicCount'           => 'PremiumLimitType::PinnedSavedMessagesTopicCount',
      'premiumLimitTypeCaptionLength'                           => 'PremiumLimitType::CaptionLength',
      'premiumLimitTypeBioLength'                               => 'PremiumLimitType::BioLength',
      'premiumLimitTypeChatFolderInviteLinkCount'               => 'PremiumLimitType::ChatFolderInviteLinkCount',
      'premiumLimitTypeShareableChatFolderCount'                => 'PremiumLimitType::ShareableChatFolderCount',
      'premiumLimitTypeActiveStoryCount'                        => 'PremiumLimitType::ActiveStoryCount',
      'premiumLimitTypeWeeklyPostedStoryCount'                  => 'PremiumLimitType::WeeklyPostedStoryCount',
      'premiumLimitTypeMonthlyPostedStoryCount'                 => 'PremiumLimitType::MonthlyPostedStoryCount',
      'premiumLimitTypeStoryCaptionLength'                      => 'PremiumLimitType::StoryCaptionLength',
      'premiumLimitTypeStorySuggestedReactionAreaCount'         => 'PremiumLimitType::StorySuggestedReactionAreaCount',
      'premiumLimitTypeSimilarChatCount'                        => 'PremiumLimitType::SimilarChatCount',
      'PremiumFeature'                                          => 'PremiumFeature',
      'premiumFeatureIncreasedLimits'                           => 'PremiumFeature::IncreasedLimits',
      'premiumFeatureIncreasedUploadFileSize'                   => 'PremiumFeature::IncreasedUploadFileSize',
      'premiumFeatureImprovedDownloadSpeed'                     => 'PremiumFeature::ImprovedDownloadSpeed',
      'premiumFeatureVoiceRecognition'                          => 'PremiumFeature::VoiceRecognition',
      'premiumFeatureDisabledAds'                               => 'PremiumFeature::DisabledAds',
      'premiumFeatureUniqueReactions'                           => 'PremiumFeature::UniqueReactions',
      'premiumFeatureUniqueStickers'                            => 'PremiumFeature::UniqueStickers',
      'premiumFeatureCustomEmoji'                               => 'PremiumFeature::CustomEmoji',
      'premiumFeatureAdvancedChatManagement'                    => 'PremiumFeature::AdvancedChatManagement',
      'premiumFeatureProfileBadge'                              => 'PremiumFeature::ProfileBadge',
      'premiumFeatureEmojiStatus'                               => 'PremiumFeature::EmojiStatus',
      'premiumFeatureAnimatedProfilePhoto'                      => 'PremiumFeature::AnimatedProfilePhoto',
      'premiumFeatureForumTopicIcon'                            => 'PremiumFeature::ForumTopicIcon',
      'premiumFeatureAppIcons'                                  => 'PremiumFeature::AppIcons',
      'premiumFeatureRealTimeChatTranslation'                   => 'PremiumFeature::RealTimeChatTranslation',
      'premiumFeatureUpgradedStories'                           => 'PremiumFeature::UpgradedStories',
      'premiumFeatureChatBoost'                                 => 'PremiumFeature::ChatBoost',
      'premiumFeatureAccentColor'                               => 'PremiumFeature::AccentColor',
      'premiumFeatureBackgroundForBoth'                         => 'PremiumFeature::BackgroundForBoth',
      'premiumFeatureSavedMessagesTags'                         => 'PremiumFeature::SavedMessagesTags',
      'premiumFeatureMessagePrivacy'                            => 'PremiumFeature::MessagePrivacy',
      'premiumFeatureLastSeenTimes'                             => 'PremiumFeature::LastSeenTimes',
      'premiumFeatureBusiness'                                  => 'PremiumFeature::Business',
      'premiumFeatureMessageEffects'                            => 'PremiumFeature::MessageEffects',
      'premiumFeatureChecklists'                                => 'PremiumFeature::Checklists',
      'premiumFeaturePaidMessages'                              => 'PremiumFeature::PaidMessages',
      'BusinessFeature'                                         => 'BusinessFeature',
      'businessFeatureLocation'                                 => 'BusinessFeature::Location',
      'businessFeatureOpeningHours'                             => 'BusinessFeature::OpeningHours',
      'businessFeatureQuickReplies'                             => 'BusinessFeature::QuickReplies',
      'businessFeatureGreetingMessage'                          => 'BusinessFeature::GreetingMessage',
      'businessFeatureAwayMessage'                              => 'BusinessFeature::AwayMessage',
      'businessFeatureAccountLinks'                             => 'BusinessFeature::AccountLinks',
      'businessFeatureStartPage'                                => 'BusinessFeature::StartPage',
      'businessFeatureBots'                                     => 'BusinessFeature::Bots',
      'businessFeatureEmojiStatus'                              => 'BusinessFeature::EmojiStatus',
      'businessFeatureChatFolderTags'                           => 'BusinessFeature::ChatFolderTags',
      'businessFeatureUpgradedStories'                          => 'BusinessFeature::UpgradedStories',
      'PremiumStoryFeature'                                     => 'PremiumStoryFeature',
      'premiumStoryFeaturePriorityOrder'                        => 'PremiumStoryFeature::PriorityOrder',
      'premiumStoryFeatureStealthMode'                          => 'PremiumStoryFeature::StealthMode',
      'premiumStoryFeaturePermanentViewsHistory'                => 'PremiumStoryFeature::PermanentViewsHistory',
      'premiumStoryFeatureCustomExpirationDuration'             => 'PremiumStoryFeature::CustomExpirationDuration',
      'premiumStoryFeatureSaveStories'                          => 'PremiumStoryFeature::SaveStories',
      'premiumStoryFeatureLinksAndFormatting'                   => 'PremiumStoryFeature::LinksAndFormatting',
      'premiumStoryFeatureVideoQuality'                         => 'PremiumStoryFeature::VideoQuality',
      'premiumLimit'                                            => 'PremiumLimit',
      'premiumFeatures'                                         => 'PremiumFeatures',
      'businessFeatures'                                        => 'BusinessFeatures',
      'PremiumSource'                                           => 'PremiumSource',
      'premiumSourceLimitExceeded'                              => 'PremiumSource::LimitExceeded',
      'premiumSourceFeature'                                    => 'PremiumSource::Feature',
      'premiumSourceBusinessFeature'                            => 'PremiumSource::BusinessFeature',
      'premiumSourceStoryFeature'                               => 'PremiumSource::StoryFeature',
      'premiumSourceLink'                                       => 'PremiumSource::Link',
      'premiumSourceSettings'                                   => 'PremiumSource::Settings',
      'premiumFeaturePromotionAnimation'                        => 'PremiumFeaturePromotionAnimation',
      'businessFeaturePromotionAnimation'                       => 'BusinessFeaturePromotionAnimation',
      'premiumState'                                            => 'PremiumState',
      'StorePaymentPurpose'                                     => 'StorePaymentPurpose',
      'storePaymentPurposePremiumSubscription'                  => 'StorePaymentPurpose::PremiumSubscription',
      'storePaymentPurposePremiumGift'                          => 'StorePaymentPurpose::PremiumGift',
      'storePaymentPurposePremiumGiftCodes'                     => 'StorePaymentPurpose::PremiumGiftCodes',
      'storePaymentPurposePremiumGiveaway'                      => 'StorePaymentPurpose::PremiumGiveaway',
      'storePaymentPurposeStarGiveaway'                         => 'StorePaymentPurpose::StarGiveaway',
      'storePaymentPurposeStars'                                => 'StorePaymentPurpose::Stars',
      'storePaymentPurposeGiftedStars'                          => 'StorePaymentPurpose::GiftedStars',
      'StoreTransaction'                                        => 'StoreTransaction',
      'storeTransactionAppStore'                                => 'StoreTransaction::AppStore',
      'storeTransactionGooglePlay'                              => 'StoreTransaction::GooglePlay',
      'TelegramPaymentPurpose'                                  => 'TelegramPaymentPurpose',
      'telegramPaymentPurposePremiumGift'                       => 'TelegramPaymentPurpose::PremiumGift',
      'telegramPaymentPurposePremiumGiftCodes'                  => 'TelegramPaymentPurpose::PremiumGiftCodes',
      'telegramPaymentPurposePremiumGiveaway'                   => 'TelegramPaymentPurpose::PremiumGiveaway',
      'telegramPaymentPurposeStars'                             => 'TelegramPaymentPurpose::Stars',
      'telegramPaymentPurposeGiftedStars'                       => 'TelegramPaymentPurpose::GiftedStars',
      'telegramPaymentPurposeStarGiveaway'                      => 'TelegramPaymentPurpose::StarGiveaway',
      'telegramPaymentPurposeJoinChat'                          => 'TelegramPaymentPurpose::JoinChat',
      'DeviceToken'                                             => 'DeviceToken',
      'deviceTokenFirebaseCloudMessaging'                       => 'DeviceToken::FirebaseCloudMessaging',
      'deviceTokenApplePush'                                    => 'DeviceToken::ApplePush',
      'deviceTokenApplePushVoIP'                                => 'DeviceToken::ApplePushVoIP',
      'deviceTokenWindowsPush'                                  => 'DeviceToken::WindowsPush',
      'deviceTokenMicrosoftPush'                                => 'DeviceToken::MicrosoftPush',
      'deviceTokenMicrosoftPushVoIP'                            => 'DeviceToken::MicrosoftPushVoIP',
      'deviceTokenWebPush'                                      => 'DeviceToken::WebPush',
      'deviceTokenSimplePush'                                   => 'DeviceToken::SimplePush',
      'deviceTokenUbuntuPush'                                   => 'DeviceToken::UbuntuPush',
      'deviceTokenBlackBerryPush'                               => 'DeviceToken::BlackBerryPush',
      'deviceTokenTizenPush'                                    => 'DeviceToken::TizenPush',
      'deviceTokenHuaweiPush'                                   => 'DeviceToken::HuaweiPush',
      'pushReceiverId'                                          => 'PushReceiverId',
      'BackgroundFill'                                          => 'BackgroundFill',
      'backgroundFillSolid'                                     => 'BackgroundFill::Solid',
      'backgroundFillGradient'                                  => 'BackgroundFill::Gradient',
      'backgroundFillFreeformGradient'                          => 'BackgroundFill::FreeformGradient',
      'BackgroundType'                                          => 'BackgroundType',
      'backgroundTypeWallpaper'                                 => 'BackgroundType::Wallpaper',
      'backgroundTypePattern'                                   => 'BackgroundType::Pattern',
      'backgroundTypeFill'                                      => 'BackgroundType::Fill',
      'backgroundTypeChatTheme'                                 => 'BackgroundType::ChatTheme',
      'InputBackground'                                         => 'InputBackground',
      'inputBackgroundLocal'                                    => 'InputBackground::Local',
      'inputBackgroundRemote'                                   => 'InputBackground::Remote',
      'inputBackgroundPrevious'                                 => 'InputBackground::Previous',
      'emojiChatTheme'                                          => 'EmojiChatTheme',
      'giftChatTheme'                                           => 'GiftChatTheme',
      'giftChatThemes'                                          => 'GiftChatThemes',
      'ChatTheme'                                               => 'ChatTheme',
      'chatThemeEmoji'                                          => 'ChatTheme::Emoji',
      'chatThemeGift'                                           => 'ChatTheme::Gift',
      'InputChatTheme'                                          => 'InputChatTheme',
      'inputChatThemeEmoji'                                     => 'InputChatTheme::Emoji',
      'inputChatThemeGift'                                      => 'InputChatTheme::Gift',
      'timeZone'                                                => 'TimeZone',
      'timeZones'                                               => 'TimeZones',
      'hashtags'                                                => 'Hashtags',
      'CanPostStoryResult'                                      => 'CanPostStoryResult',
      'canPostStoryResultOk'                                    => 'CanPostStoryResult::Ok',
      'canPostStoryResultPremiumNeeded'                         => 'CanPostStoryResult::PremiumNeeded',
      'canPostStoryResultBoostNeeded'                           => 'CanPostStoryResult::BoostNeeded',
      'canPostStoryResultActiveStoryLimitExceeded'              => 'CanPostStoryResult::ActiveStoryLimitExceeded',
      'canPostStoryResultWeeklyLimitExceeded'                   => 'CanPostStoryResult::WeeklyLimitExceeded',
      'canPostStoryResultMonthlyLimitExceeded'                  => 'CanPostStoryResult::MonthlyLimitExceeded',
      'canPostStoryResultLiveStoryIsActive'                     => 'CanPostStoryResult::LiveStoryIsActive',
      'StartLiveStoryResult'                                    => 'StartLiveStoryResult',
      'startLiveStoryResultOk'                                  => 'StartLiveStoryResult::Ok',
      'startLiveStoryResultFail'                                => 'StartLiveStoryResult::Fail',
      'CanTransferOwnershipResult'                              => 'CanTransferOwnershipResult',
      'canTransferOwnershipResultOk'                            => 'CanTransferOwnershipResult::Ok',
      'canTransferOwnershipResultPasswordNeeded'                => 'CanTransferOwnershipResult::PasswordNeeded',
      'canTransferOwnershipResultPasswordTooFresh'              => 'CanTransferOwnershipResult::PasswordTooFresh',
      'canTransferOwnershipResultSessionTooFresh'               => 'CanTransferOwnershipResult::SessionTooFresh',
      'CheckChatUsernameResult'                                 => 'CheckChatUsernameResult',
      'checkChatUsernameResultOk'                               => 'CheckChatUsernameResult::Ok',
      'checkChatUsernameResultUsernameInvalid'                  => 'CheckChatUsernameResult::UsernameInvalid',
      'checkChatUsernameResultUsernameOccupied'                 => 'CheckChatUsernameResult::UsernameOccupied',
      'checkChatUsernameResultUsernamePurchasable'              => 'CheckChatUsernameResult::UsernamePurchasable',
      'checkChatUsernameResultPublicChatsTooMany'               => 'CheckChatUsernameResult::PublicChatsTooMany',
      'checkChatUsernameResultPublicGroupsUnavailable'          => 'CheckChatUsernameResult::PublicGroupsUnavailable',
      'CheckStickerSetNameResult'                               => 'CheckStickerSetNameResult',
      'checkStickerSetNameResultOk'                             => 'CheckStickerSetNameResult::Ok',
      'checkStickerSetNameResultNameInvalid'                    => 'CheckStickerSetNameResult::NameInvalid',
      'checkStickerSetNameResultNameOccupied'                   => 'CheckStickerSetNameResult::NameOccupied',
      'ResetPasswordResult'                                     => 'ResetPasswordResult',
      'resetPasswordResultOk'                                   => 'ResetPasswordResult::Ok',
      'resetPasswordResultPending'                              => 'ResetPasswordResult::Pending',
      'resetPasswordResultDeclined'                             => 'ResetPasswordResult::Declined',
      'MessageFileType'                                         => 'MessageFileType',
      'messageFileTypePrivate'                                  => 'MessageFileType::Private',
      'messageFileTypeGroup'                                    => 'MessageFileType::Group',
      'messageFileTypeUnknown'                                  => 'MessageFileType::Unknown',
      'PushMessageContent'                                      => 'PushMessageContent',
      'pushMessageContentHidden'                                => 'PushMessageContent::Hidden',
      'pushMessageContentAnimation'                             => 'PushMessageContent::Animation',
      'pushMessageContentAudio'                                 => 'PushMessageContent::Audio',
      'pushMessageContentContact'                               => 'PushMessageContent::Contact',
      'pushMessageContentContactRegistered'                     => 'PushMessageContent::ContactRegistered',
      'pushMessageContentDocument'                              => 'PushMessageContent::Document',
      'pushMessageContentGame'                                  => 'PushMessageContent::Game',
      'pushMessageContentGameScore'                             => 'PushMessageContent::GameScore',
      'pushMessageContentInvoice'                               => 'PushMessageContent::Invoice',
      'pushMessageContentLocation'                              => 'PushMessageContent::Location',
      'pushMessageContentPaidMedia'                             => 'PushMessageContent::PaidMedia',
      'pushMessageContentPhoto'                                 => 'PushMessageContent::Photo',
      'pushMessageContentPoll'                                  => 'PushMessageContent::Poll',
      'pushMessageContentPremiumGiftCode'                       => 'PushMessageContent::PremiumGiftCode',
      'pushMessageContentGiveaway'                              => 'PushMessageContent::Giveaway',
      'pushMessageContentGift'                                  => 'PushMessageContent::Gift',
      'pushMessageContentUpgradedGift'                          => 'PushMessageContent::UpgradedGift',
      'pushMessageContentScreenshotTaken'                       => 'PushMessageContent::ScreenshotTaken',
      'pushMessageContentSticker'                               => 'PushMessageContent::Sticker',
      'pushMessageContentStory'                                 => 'PushMessageContent::Story',
      'pushMessageContentText'                                  => 'PushMessageContent::Text',
      'pushMessageContentChecklist'                             => 'PushMessageContent::Checklist',
      'pushMessageContentVideo'                                 => 'PushMessageContent::Video',
      'pushMessageContentVideoNote'                             => 'PushMessageContent::VideoNote',
      'pushMessageContentVoiceNote'                             => 'PushMessageContent::VoiceNote',
      'pushMessageContentBasicGroupChatCreate'                  => 'PushMessageContent::BasicGroupChatCreate',
      'pushMessageContentVideoChatStarted'                      => 'PushMessageContent::VideoChatStarted',
      'pushMessageContentVideoChatEnded'                        => 'PushMessageContent::VideoChatEnded',
      'pushMessageContentInviteVideoChatParticipants'           => 'PushMessageContent::InviteVideoChatParticipants',
      'pushMessageContentChatAddMembers'                        => 'PushMessageContent::ChatAddMembers',
      'pushMessageContentChatChangePhoto'                       => 'PushMessageContent::ChatChangePhoto',
      'pushMessageContentChatChangeTitle'                       => 'PushMessageContent::ChatChangeTitle',
      'pushMessageContentChatSetBackground'                     => 'PushMessageContent::ChatSetBackground',
      'pushMessageContentChatSetTheme'                          => 'PushMessageContent::ChatSetTheme',
      'pushMessageContentChatDeleteMember'                      => 'PushMessageContent::ChatDeleteMember',
      'pushMessageContentChatJoinByLink'                        => 'PushMessageContent::ChatJoinByLink',
      'pushMessageContentChatJoinByRequest'                     => 'PushMessageContent::ChatJoinByRequest',
      'pushMessageContentRecurringPayment'                      => 'PushMessageContent::RecurringPayment',
      'pushMessageContentSuggestProfilePhoto'                   => 'PushMessageContent::SuggestProfilePhoto',
      'pushMessageContentSuggestBirthdate'                      => 'PushMessageContent::SuggestBirthdate',
      'pushMessageContentProximityAlertTriggered'               => 'PushMessageContent::ProximityAlertTriggered',
      'pushMessageContentChecklistTasksAdded'                   => 'PushMessageContent::ChecklistTasksAdded',
      'pushMessageContentChecklistTasksDone'                    => 'PushMessageContent::ChecklistTasksDone',
      'pushMessageContentMessageForwards'                       => 'PushMessageContent::MessageForwards',
      'pushMessageContentMediaAlbum'                            => 'PushMessageContent::MediaAlbum',
      'NotificationType'                                        => 'NotificationType',
      'notificationTypeNewMessage'                              => 'NotificationType::NewMessage',
      'notificationTypeNewSecretChat'                           => 'NotificationType::NewSecretChat',
      'notificationTypeNewCall'                                 => 'NotificationType::NewCall',
      'notificationTypeNewPushMessage'                          => 'NotificationType::NewPushMessage',
      'NotificationGroupType'                                   => 'NotificationGroupType',
      'notificationGroupTypeMessages'                           => 'NotificationGroupType::Messages',
      'notificationGroupTypeMentions'                           => 'NotificationGroupType::Mentions',
      'notificationGroupTypeSecretChat'                         => 'NotificationGroupType::SecretChat',
      'notificationGroupTypeCalls'                              => 'NotificationGroupType::Calls',
      'notificationSound'                                       => 'NotificationSound',
      'notificationSounds'                                      => 'NotificationSounds',
      'notification'                                            => 'Notification',
      'notificationGroup'                                       => 'NotificationGroup',
      'OptionValue'                                             => 'OptionValue',
      'optionValueBoolean'                                      => 'OptionValue::Boolean',
      'optionValueEmpty'                                        => 'OptionValue::Empty',
      'optionValueInteger'                                      => 'OptionValue::Integer',
      'optionValueString'                                       => 'OptionValue::String',
      'jsonObjectMember'                                        => 'JsonObjectMember',
      'JsonValue'                                               => 'JsonValue',
      'jsonValueNull'                                           => 'JsonValue::Null',
      'jsonValueBoolean'                                        => 'JsonValue::Boolean',
      'jsonValueNumber'                                         => 'JsonValue::Number',
      'jsonValueString'                                         => 'JsonValue::String',
      'jsonValueArray'                                          => 'JsonValue::Array',
      'jsonValueObject'                                         => 'JsonValue::Object',
      'StoryPrivacySettings'                                    => 'StoryPrivacySettings',
      'storyPrivacySettingsEveryone'                            => 'StoryPrivacySettings::Everyone',
      'storyPrivacySettingsContacts'                            => 'StoryPrivacySettings::Contacts',
      'storyPrivacySettingsCloseFriends'                        => 'StoryPrivacySettings::CloseFriends',
      'storyPrivacySettingsSelectedUsers'                       => 'StoryPrivacySettings::SelectedUsers',
      'UserPrivacySettingRule'                                  => 'UserPrivacySettingRule',
      'userPrivacySettingRuleAllowAll'                          => 'UserPrivacySettingRule::AllowAll',
      'userPrivacySettingRuleAllowContacts'                     => 'UserPrivacySettingRule::AllowContacts',
      'userPrivacySettingRuleAllowBots'                         => 'UserPrivacySettingRule::AllowBots',
      'userPrivacySettingRuleAllowPremiumUsers'                 => 'UserPrivacySettingRule::AllowPremiumUsers',
      'userPrivacySettingRuleAllowUsers'                        => 'UserPrivacySettingRule::AllowUsers',
      'userPrivacySettingRuleAllowChatMembers'                  => 'UserPrivacySettingRule::AllowChatMembers',
      'userPrivacySettingRuleRestrictAll'                       => 'UserPrivacySettingRule::RestrictAll',
      'userPrivacySettingRuleRestrictContacts'                  => 'UserPrivacySettingRule::RestrictContacts',
      'userPrivacySettingRuleRestrictBots'                      => 'UserPrivacySettingRule::RestrictBots',
      'userPrivacySettingRuleRestrictUsers'                     => 'UserPrivacySettingRule::RestrictUsers',
      'userPrivacySettingRuleRestrictChatMembers'               => 'UserPrivacySettingRule::RestrictChatMembers',
      'userPrivacySettingRules'                                 => 'UserPrivacySettingRules',
      'UserPrivacySetting'                                      => 'UserPrivacySetting',
      'userPrivacySettingShowStatus'                            => 'UserPrivacySetting::ShowStatus',
      'userPrivacySettingShowProfilePhoto'                      => 'UserPrivacySetting::ShowProfilePhoto',
      'userPrivacySettingShowLinkInForwardedMessages'           => 'UserPrivacySetting::ShowLinkInForwardedMessages',
      'userPrivacySettingShowPhoneNumber'                       => 'UserPrivacySetting::ShowPhoneNumber',
      'userPrivacySettingShowBio'                               => 'UserPrivacySetting::ShowBio',
      'userPrivacySettingShowBirthdate'                         => 'UserPrivacySetting::ShowBirthdate',
      'userPrivacySettingShowProfileAudio'                      => 'UserPrivacySetting::ShowProfileAudio',
      'userPrivacySettingAllowChatInvites'                      => 'UserPrivacySetting::AllowChatInvites',
      'userPrivacySettingAllowCalls'                            => 'UserPrivacySetting::AllowCalls',
      'userPrivacySettingAllowPeerToPeerCalls'                  => 'UserPrivacySetting::AllowPeerToPeerCalls',
      'userPrivacySettingAllowFindingByPhoneNumber'             => 'UserPrivacySetting::AllowFindingByPhoneNumber',
      'userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages' => 'UserPrivacySetting::AllowPrivateVoiceAndVideoNoteMessages',
      'userPrivacySettingAutosaveGifts'                         => 'UserPrivacySetting::AutosaveGifts',
      'userPrivacySettingAllowUnpaidMessages'                   => 'UserPrivacySetting::AllowUnpaidMessages',
      'readDatePrivacySettings'                                 => 'ReadDatePrivacySettings',
      'newChatPrivacySettings'                                  => 'NewChatPrivacySettings',
      'CanSendMessageToUserResult'                              => 'CanSendMessageToUserResult',
      'canSendMessageToUserResultOk'                            => 'CanSendMessageToUserResult::Ok',
      'canSendMessageToUserResultUserHasPaidMessages'           => 'CanSendMessageToUserResult::UserHasPaidMessages',
      'canSendMessageToUserResultUserIsDeleted'                 => 'CanSendMessageToUserResult::UserIsDeleted',
      'canSendMessageToUserResultUserRestrictsNewChats'         => 'CanSendMessageToUserResult::UserRestrictsNewChats',
      'accountTtl'                                              => 'AccountTtl',
      'messageAutoDeleteTime'                                   => 'MessageAutoDeleteTime',
      'SessionType'                                             => 'SessionType',
      'sessionTypeAndroid'                                      => 'SessionType::Android',
      'sessionTypeApple'                                        => 'SessionType::Apple',
      'sessionTypeBrave'                                        => 'SessionType::Brave',
      'sessionTypeChrome'                                       => 'SessionType::Chrome',
      'sessionTypeEdge'                                         => 'SessionType::Edge',
      'sessionTypeFirefox'                                      => 'SessionType::Firefox',
      'sessionTypeIpad'                                         => 'SessionType::Ipad',
      'sessionTypeIphone'                                       => 'SessionType::Iphone',
      'sessionTypeLinux'                                        => 'SessionType::Linux',
      'sessionTypeMac'                                          => 'SessionType::Mac',
      'sessionTypeOpera'                                        => 'SessionType::Opera',
      'sessionTypeSafari'                                       => 'SessionType::Safari',
      'sessionTypeUbuntu'                                       => 'SessionType::Ubuntu',
      'sessionTypeUnknown'                                      => 'SessionType::Unknown',
      'sessionTypeVivaldi'                                      => 'SessionType::Vivaldi',
      'sessionTypeWindows'                                      => 'SessionType::Windows',
      'sessionTypeXbox'                                         => 'SessionType::Xbox',
      'session'                                                 => 'Session',
      'sessions'                                                => 'Sessions',
      'unconfirmedSession'                                      => 'UnconfirmedSession',
      'connectedWebsite'                                        => 'ConnectedWebsite',
      'connectedWebsites'                                       => 'ConnectedWebsites',
      'ReportReason'                                            => 'ReportReason',
      'reportReasonSpam'                                        => 'ReportReason::Spam',
      'reportReasonViolence'                                    => 'ReportReason::Violence',
      'reportReasonPornography'                                 => 'ReportReason::Pornography',
      'reportReasonChildAbuse'                                  => 'ReportReason::ChildAbuse',
      'reportReasonCopyright'                                   => 'ReportReason::Copyright',
      'reportReasonUnrelatedLocation'                           => 'ReportReason::UnrelatedLocation',
      'reportReasonFake'                                        => 'ReportReason::Fake',
      'reportReasonIllegalDrugs'                                => 'ReportReason::IllegalDrugs',
      'reportReasonPersonalDetails'                             => 'ReportReason::PersonalDetails',
      'reportReasonCustom'                                      => 'ReportReason::Custom',
      'ReportChatResult'                                        => 'ReportChatResult',
      'reportChatResultOk'                                      => 'ReportChatResult::Ok',
      'reportChatResultOptionRequired'                          => 'ReportChatResult::OptionRequired',
      'reportChatResultTextRequired'                            => 'ReportChatResult::TextRequired',
      'reportChatResultMessagesRequired'                        => 'ReportChatResult::MessagesRequired',
      'ReportStoryResult'                                       => 'ReportStoryResult',
      'reportStoryResultOk'                                     => 'ReportStoryResult::Ok',
      'reportStoryResultOptionRequired'                         => 'ReportStoryResult::OptionRequired',
      'reportStoryResultTextRequired'                           => 'ReportStoryResult::TextRequired',
      'InternalLinkType'                                        => 'InternalLinkType',
      'internalLinkTypeActiveSessions'                          => 'InternalLinkType::ActiveSessions',
      'internalLinkTypeAttachmentMenuBot'                       => 'InternalLinkType::AttachmentMenuBot',
      'internalLinkTypeAuthenticationCode'                      => 'InternalLinkType::AuthenticationCode',
      'internalLinkTypeBackground'                              => 'InternalLinkType::Background',
      'internalLinkTypeBotAddToChannel'                         => 'InternalLinkType::BotAddToChannel',
      'internalLinkTypeBotStart'                                => 'InternalLinkType::BotStart',
      'internalLinkTypeBotStartInGroup'                         => 'InternalLinkType::BotStartInGroup',
      'internalLinkTypeBusinessChat'                            => 'InternalLinkType::BusinessChat',
      'internalLinkTypeBuyStars'                                => 'InternalLinkType::BuyStars',
      'internalLinkTypeChangePhoneNumber'                       => 'InternalLinkType::ChangePhoneNumber',
      'internalLinkTypeChatAffiliateProgram'                    => 'InternalLinkType::ChatAffiliateProgram',
      'internalLinkTypeChatBoost'                               => 'InternalLinkType::ChatBoost',
      'internalLinkTypeChatFolderInvite'                        => 'InternalLinkType::ChatFolderInvite',
      'internalLinkTypeChatFolderSettings'                      => 'InternalLinkType::ChatFolderSettings',
      'internalLinkTypeChatInvite'                              => 'InternalLinkType::ChatInvite',
      'internalLinkTypeDefaultMessageAutoDeleteTimerSettings'   => 'InternalLinkType::DefaultMessageAutoDeleteTimerSettings',
      'internalLinkTypeDirectMessagesChat'                      => 'InternalLinkType::DirectMessagesChat',
      'internalLinkTypeEditProfileSettings'                     => 'InternalLinkType::EditProfileSettings',
      'internalLinkTypeGame'                                    => 'InternalLinkType::Game',
      'internalLinkTypeGiftAuction'                             => 'InternalLinkType::GiftAuction',
      'internalLinkTypeGiftCollection'                          => 'InternalLinkType::GiftCollection',
      'internalLinkTypeGroupCall'                               => 'InternalLinkType::GroupCall',
      'internalLinkTypeInstantView'                             => 'InternalLinkType::InstantView',
      'internalLinkTypeInvoice'                                 => 'InternalLinkType::Invoice',
      'internalLinkTypeLanguagePack'                            => 'InternalLinkType::LanguagePack',
      'internalLinkTypeLanguageSettings'                        => 'InternalLinkType::LanguageSettings',
      'internalLinkTypeLiveStory'                               => 'InternalLinkType::LiveStory',
      'internalLinkTypeLoginEmailSettings'                      => 'InternalLinkType::LoginEmailSettings',
      'internalLinkTypeMainWebApp'                              => 'InternalLinkType::MainWebApp',
      'internalLinkTypeMessage'                                 => 'InternalLinkType::Message',
      'internalLinkTypeMessageDraft'                            => 'InternalLinkType::MessageDraft',
      'internalLinkTypeMyStars'                                 => 'InternalLinkType::MyStars',
      'internalLinkTypeMyToncoins'                              => 'InternalLinkType::MyToncoins',
      'internalLinkTypePassportDataRequest'                     => 'InternalLinkType::PassportDataRequest',
      'internalLinkTypePasswordSettings'                        => 'InternalLinkType::PasswordSettings',
      'internalLinkTypePhoneNumberConfirmation'                 => 'InternalLinkType::PhoneNumberConfirmation',
      'internalLinkTypePhoneNumberPrivacySettings'              => 'InternalLinkType::PhoneNumberPrivacySettings',
      'internalLinkTypePremiumFeatures'                         => 'InternalLinkType::PremiumFeatures',
      'internalLinkTypePremiumGift'                             => 'InternalLinkType::PremiumGift',
      'internalLinkTypePremiumGiftCode'                         => 'InternalLinkType::PremiumGiftCode',
      'internalLinkTypePrivacyAndSecuritySettings'              => 'InternalLinkType::PrivacyAndSecuritySettings',
      'internalLinkTypeProxy'                                   => 'InternalLinkType::Proxy',
      'internalLinkTypePublicChat'                              => 'InternalLinkType::PublicChat',
      'internalLinkTypeQrCodeAuthentication'                    => 'InternalLinkType::QrCodeAuthentication',
      'internalLinkTypeRestorePurchases'                        => 'InternalLinkType::RestorePurchases',
      'internalLinkTypeSettings'                                => 'InternalLinkType::Settings',
      'internalLinkTypeStickerSet'                              => 'InternalLinkType::StickerSet',
      'internalLinkTypeStory'                                   => 'InternalLinkType::Story',
      'internalLinkTypeStoryAlbum'                              => 'InternalLinkType::StoryAlbum',
      'internalLinkTypeTheme'                                   => 'InternalLinkType::Theme',
      'internalLinkTypeThemeSettings'                           => 'InternalLinkType::ThemeSettings',
      'internalLinkTypeUnknownDeepLink'                         => 'InternalLinkType::UnknownDeepLink',
      'internalLinkTypeUnsupportedProxy'                        => 'InternalLinkType::UnsupportedProxy',
      'internalLinkTypeUpgradedGift'                            => 'InternalLinkType::UpgradedGift',
      'internalLinkTypeUserPhoneNumber'                         => 'InternalLinkType::UserPhoneNumber',
      'internalLinkTypeUserToken'                               => 'InternalLinkType::UserToken',
      'internalLinkTypeVideoChat'                               => 'InternalLinkType::VideoChat',
      'internalLinkTypeWebApp'                                  => 'InternalLinkType::WebApp',
      'messageLink'                                             => 'MessageLink',
      'messageLinkInfo'                                         => 'MessageLinkInfo',
      'chatBoostLink'                                           => 'ChatBoostLink',
      'chatBoostLinkInfo'                                       => 'ChatBoostLinkInfo',
      'BlockList'                                               => 'BlockList',
      'blockListMain'                                           => 'BlockList::Main',
      'blockListStories'                                        => 'BlockList::Stories',
      'FileType'                                                => 'FileType',
      'fileTypeNone'                                            => 'FileType::None',
      'fileTypeAnimation'                                       => 'FileType::Animation',
      'fileTypeAudio'                                           => 'FileType::Audio',
      'fileTypeDocument'                                        => 'FileType::Document',
      'fileTypeNotificationSound'                               => 'FileType::NotificationSound',
      'fileTypePhoto'                                           => 'FileType::Photo',
      'fileTypePhotoStory'                                      => 'FileType::PhotoStory',
      'fileTypeProfilePhoto'                                    => 'FileType::ProfilePhoto',
      'fileTypeSecret'                                          => 'FileType::Secret',
      'fileTypeSecretThumbnail'                                 => 'FileType::SecretThumbnail',
      'fileTypeSecure'                                          => 'FileType::Secure',
      'fileTypeSelfDestructingPhoto'                            => 'FileType::SelfDestructingPhoto',
      'fileTypeSelfDestructingVideo'                            => 'FileType::SelfDestructingVideo',
      'fileTypeSelfDestructingVideoNote'                        => 'FileType::SelfDestructingVideoNote',
      'fileTypeSelfDestructingVoiceNote'                        => 'FileType::SelfDestructingVoiceNote',
      'fileTypeSticker'                                         => 'FileType::Sticker',
      'fileTypeThumbnail'                                       => 'FileType::Thumbnail',
      'fileTypeUnknown'                                         => 'FileType::Unknown',
      'fileTypeVideo'                                           => 'FileType::Video',
      'fileTypeVideoNote'                                       => 'FileType::VideoNote',
      'fileTypeVideoStory'                                      => 'FileType::VideoStory',
      'fileTypeVoiceNote'                                       => 'FileType::VoiceNote',
      'fileTypeWallpaper'                                       => 'FileType::Wallpaper',
      'storageStatisticsByFileType'                             => 'StorageStatisticsByFileType',
      'storageStatisticsByChat'                                 => 'StorageStatisticsByChat',
      'storageStatistics'                                       => 'StorageStatistics',
      'storageStatisticsFast'                                   => 'StorageStatisticsFast',
      'databaseStatistics'                                      => 'DatabaseStatistics',
      'NetworkType'                                             => 'NetworkType',
      'networkTypeNone'                                         => 'NetworkType::None',
      'networkTypeMobile'                                       => 'NetworkType::Mobile',
      'networkTypeMobileRoaming'                                => 'NetworkType::MobileRoaming',
      'networkTypeWiFi'                                         => 'NetworkType::WiFi',
      'networkTypeOther'                                        => 'NetworkType::Other',
      'NetworkStatisticsEntry'                                  => 'NetworkStatisticsEntry',
      'networkStatisticsEntryFile'                              => 'NetworkStatisticsEntry::File',
      'networkStatisticsEntryCall'                              => 'NetworkStatisticsEntry::Call',
      'networkStatistics'                                       => 'NetworkStatistics',
      'autoDownloadSettings'                                    => 'AutoDownloadSettings',
      'autoDownloadSettingsPresets'                             => 'AutoDownloadSettingsPresets',
      'AutosaveSettingsScope'                                   => 'AutosaveSettingsScope',
      'autosaveSettingsScopePrivateChats'                       => 'AutosaveSettingsScope::PrivateChats',
      'autosaveSettingsScopeGroupChats'                         => 'AutosaveSettingsScope::GroupChats',
      'autosaveSettingsScopeChannelChats'                       => 'AutosaveSettingsScope::ChannelChats',
      'autosaveSettingsScopeChat'                               => 'AutosaveSettingsScope::Chat',
      'scopeAutosaveSettings'                                   => 'ScopeAutosaveSettings',
      'autosaveSettingsException'                               => 'AutosaveSettingsException',
      'autosaveSettings'                                        => 'AutosaveSettings',
      'ConnectionState'                                         => 'ConnectionState',
      'connectionStateWaitingForNetwork'                        => 'ConnectionState::WaitingForNetwork',
      'connectionStateConnectingToProxy'                        => 'ConnectionState::ConnectingToProxy',
      'connectionStateConnecting'                               => 'ConnectionState::Connecting',
      'connectionStateUpdating'                                 => 'ConnectionState::Updating',
      'connectionStateReady'                                    => 'ConnectionState::Ready',
      'ageVerificationParameters'                               => 'AgeVerificationParameters',
      'TopChatCategory'                                         => 'TopChatCategory',
      'topChatCategoryUsers'                                    => 'TopChatCategory::Users',
      'topChatCategoryBots'                                     => 'TopChatCategory::Bots',
      'topChatCategoryGroups'                                   => 'TopChatCategory::Groups',
      'topChatCategoryChannels'                                 => 'TopChatCategory::Channels',
      'topChatCategoryInlineBots'                               => 'TopChatCategory::InlineBots',
      'topChatCategoryWebAppBots'                               => 'TopChatCategory::WebAppBots',
      'topChatCategoryCalls'                                    => 'TopChatCategory::Calls',
      'topChatCategoryForwardChats'                             => 'TopChatCategory::ForwardChats',
      'foundPosition'                                           => 'FoundPosition',
      'foundPositions'                                          => 'FoundPositions',
      'TMeUrlType'                                              => 'TMeUrlType',
      'tMeUrlTypeUser'                                          => 'TMeUrlType::User',
      'tMeUrlTypeSupergroup'                                    => 'TMeUrlType::Supergroup',
      'tMeUrlTypeChatInvite'                                    => 'TMeUrlType::ChatInvite',
      'tMeUrlTypeStickerSet'                                    => 'TMeUrlType::StickerSet',
      'tMeUrl'                                                  => 'TMeUrl',
      'tMeUrls'                                                 => 'TMeUrls',
      'SuggestedAction'                                         => 'SuggestedAction',
      'suggestedActionEnableArchiveAndMuteNewChats'             => 'SuggestedAction::EnableArchiveAndMuteNewChats',
      'suggestedActionCheckPassword'                            => 'SuggestedAction::CheckPassword',
      'suggestedActionCheckPhoneNumber'                         => 'SuggestedAction::CheckPhoneNumber',
      'suggestedActionViewChecksHint'                           => 'SuggestedAction::ViewChecksHint',
      'suggestedActionConvertToBroadcastGroup'                  => 'SuggestedAction::ConvertToBroadcastGroup',
      'suggestedActionSetPassword'                              => 'SuggestedAction::SetPassword',
      'suggestedActionUpgradePremium'                           => 'SuggestedAction::UpgradePremium',
      'suggestedActionRestorePremium'                           => 'SuggestedAction::RestorePremium',
      'suggestedActionSubscribeToAnnualPremium'                 => 'SuggestedAction::SubscribeToAnnualPremium',
      'suggestedActionGiftPremiumForChristmas'                  => 'SuggestedAction::GiftPremiumForChristmas',
      'suggestedActionSetBirthdate'                             => 'SuggestedAction::SetBirthdate',
      'suggestedActionSetProfilePhoto'                          => 'SuggestedAction::SetProfilePhoto',
      'suggestedActionExtendPremium'                            => 'SuggestedAction::ExtendPremium',
      'suggestedActionExtendStarSubscriptions'                  => 'SuggestedAction::ExtendStarSubscriptions',
      'suggestedActionCustom'                                   => 'SuggestedAction::Custom',
      'suggestedActionSetLoginEmailAddress'                     => 'SuggestedAction::SetLoginEmailAddress',
      'suggestedActionAddLoginPasskey'                          => 'SuggestedAction::AddLoginPasskey',
      'count'                                                   => 'Count',
      'text'                                                    => 'Text',
      'data'                                                    => 'Data',
      'seconds'                                                 => 'Seconds',
      'fileDownloadedPrefixSize'                                => 'FileDownloadedPrefixSize',
      'starCount'                                               => 'StarCount',
      'deepLinkInfo'                                            => 'DeepLinkInfo',
      'TextParseMode'                                           => 'TextParseMode',
      'textParseModeMarkdown'                                   => 'TextParseMode::Markdown',
      'textParseModeHTML'                                       => 'TextParseMode::HTML',
      'ProxyType'                                               => 'ProxyType',
      'proxyTypeSocks5'                                         => 'ProxyType::Socks5',
      'proxyTypeHttp'                                           => 'ProxyType::Http',
      'proxyTypeMtproto'                                        => 'ProxyType::Mtproto',
      'proxy'                                                   => 'Proxy',
      'proxies'                                                 => 'Proxies',
      'inputSticker'                                            => 'InputSticker',
      'dateRange'                                               => 'DateRange',
      'statisticalValue'                                        => 'StatisticalValue',
      'StatisticalGraph'                                        => 'StatisticalGraph',
      'statisticalGraphData'                                    => 'StatisticalGraph::Data',
      'statisticalGraphAsync'                                   => 'StatisticalGraph::Async',
      'statisticalGraphError'                                   => 'StatisticalGraph::Error',
      'ChatStatisticsObjectType'                                => 'ChatStatisticsObjectType',
      'chatStatisticsObjectTypeMessage'                         => 'ChatStatisticsObjectType::Message',
      'chatStatisticsObjectTypeStory'                           => 'ChatStatisticsObjectType::Story',
      'chatStatisticsInteractionInfo'                           => 'ChatStatisticsInteractionInfo',
      'chatStatisticsMessageSenderInfo'                         => 'ChatStatisticsMessageSenderInfo',
      'chatStatisticsAdministratorActionsInfo'                  => 'ChatStatisticsAdministratorActionsInfo',
      'chatStatisticsInviterInfo'                               => 'ChatStatisticsInviterInfo',
      'ChatStatistics'                                          => 'ChatStatistics',
      'chatStatisticsSupergroup'                                => 'ChatStatistics::Supergroup',
      'chatStatisticsChannel'                                   => 'ChatStatistics::Channel',
      'chatRevenueAmount'                                       => 'ChatRevenueAmount',
      'chatRevenueStatistics'                                   => 'ChatRevenueStatistics',
      'messageStatistics'                                       => 'MessageStatistics',
      'storyStatistics'                                         => 'StoryStatistics',
      'RevenueWithdrawalState'                                  => 'RevenueWithdrawalState',
      'revenueWithdrawalStatePending'                           => 'RevenueWithdrawalState::Pending',
      'revenueWithdrawalStateSucceeded'                         => 'RevenueWithdrawalState::Succeeded',
      'revenueWithdrawalStateFailed'                            => 'RevenueWithdrawalState::Failed',
      'ChatRevenueTransactionType'                              => 'ChatRevenueTransactionType',
      'chatRevenueTransactionTypeUnsupported'                   => 'ChatRevenueTransactionType::Unsupported',
      'chatRevenueTransactionTypeSponsoredMessageEarnings'      => 'ChatRevenueTransactionType::SponsoredMessageEarnings',
      'chatRevenueTransactionTypeSuggestedPostEarnings'         => 'ChatRevenueTransactionType::SuggestedPostEarnings',
      'chatRevenueTransactionTypeFragmentWithdrawal'            => 'ChatRevenueTransactionType::FragmentWithdrawal',
      'chatRevenueTransactionTypeFragmentRefund'                => 'ChatRevenueTransactionType::FragmentRefund',
      'chatRevenueTransaction'                                  => 'ChatRevenueTransaction',
      'chatRevenueTransactions'                                 => 'ChatRevenueTransactions',
      'starRevenueStatus'                                       => 'StarRevenueStatus',
      'starRevenueStatistics'                                   => 'StarRevenueStatistics',
      'tonRevenueStatus'                                        => 'TonRevenueStatus',
      'tonRevenueStatistics'                                    => 'TonRevenueStatistics',
      'point'                                                   => 'Point',
      'VectorPathCommand'                                       => 'VectorPathCommand',
      'vectorPathCommandLine'                                   => 'VectorPathCommand::Line',
      'vectorPathCommandCubicBezierCurve'                       => 'VectorPathCommand::CubicBezierCurve',
      'BotCommandScope'                                         => 'BotCommandScope',
      'botCommandScopeDefault'                                  => 'BotCommandScope::Default',
      'botCommandScopeAllPrivateChats'                          => 'BotCommandScope::AllPrivateChats',
      'botCommandScopeAllGroupChats'                            => 'BotCommandScope::AllGroupChats',
      'botCommandScopeAllChatAdministrators'                    => 'BotCommandScope::AllChatAdministrators',
      'botCommandScopeChat'                                     => 'BotCommandScope::Chat',
      'botCommandScopeChatAdministrators'                       => 'BotCommandScope::ChatAdministrators',
      'botCommandScopeChatMember'                               => 'BotCommandScope::ChatMember',
      'PhoneNumberCodeType'                                     => 'PhoneNumberCodeType',
      'phoneNumberCodeTypeChange'                               => 'PhoneNumberCodeType::Change',
      'phoneNumberCodeTypeVerify'                               => 'PhoneNumberCodeType::Verify',
      'phoneNumberCodeTypeConfirmOwnership'                     => 'PhoneNumberCodeType::ConfirmOwnership',
      'Update'                                                  => 'Update',
      'updateAuthorizationState'                                => 'Update::AuthorizationState',
      'updateNewMessage'                                        => 'Update::NewMessage',
      'updateMessageSendAcknowledged'                           => 'Update::MessageSendAcknowledged',
      'updateMessageSendSucceeded'                              => 'Update::MessageSendSucceeded',
      'updateMessageSendFailed'                                 => 'Update::MessageSendFailed',
      'updateMessageContent'                                    => 'Update::MessageContent',
      'updateMessageEdited'                                     => 'Update::MessageEdited',
      'updateMessageIsPinned'                                   => 'Update::MessageIsPinned',
      'updateMessageInteractionInfo'                            => 'Update::MessageInteractionInfo',
      'updateMessageContentOpened'                              => 'Update::MessageContentOpened',
      'updateMessageMentionRead'                                => 'Update::MessageMentionRead',
      'updateMessageUnreadReactions'                            => 'Update::MessageUnreadReactions',
      'updateMessageFactCheck'                                  => 'Update::MessageFactCheck',
      'updateMessageSuggestedPostInfo'                          => 'Update::MessageSuggestedPostInfo',
      'updateMessageLiveLocationViewed'                         => 'Update::MessageLiveLocationViewed',
      'updateVideoPublished'                                    => 'Update::VideoPublished',
      'updateNewChat'                                           => 'Update::NewChat',
      'updateChatTitle'                                         => 'Update::ChatTitle',
      'updateChatPhoto'                                         => 'Update::ChatPhoto',
      'updateChatAccentColors'                                  => 'Update::ChatAccentColors',
      'updateChatPermissions'                                   => 'Update::ChatPermissions',
      'updateChatLastMessage'                                   => 'Update::ChatLastMessage',
      'updateChatPosition'                                      => 'Update::ChatPosition',
      'updateChatAddedToList'                                   => 'Update::ChatAddedToList',
      'updateChatRemovedFromList'                               => 'Update::ChatRemovedFromList',
      'updateChatReadInbox'                                     => 'Update::ChatReadInbox',
      'updateChatReadOutbox'                                    => 'Update::ChatReadOutbox',
      'updateChatActionBar'                                     => 'Update::ChatActionBar',
      'updateChatBusinessBotManageBar'                          => 'Update::ChatBusinessBotManageBar',
      'updateChatAvailableReactions'                            => 'Update::ChatAvailableReactions',
      'updateChatDraftMessage'                                  => 'Update::ChatDraftMessage',
      'updateChatEmojiStatus'                                   => 'Update::ChatEmojiStatus',
      'updateChatMessageSender'                                 => 'Update::ChatMessageSender',
      'updateChatMessageAutoDeleteTime'                         => 'Update::ChatMessageAutoDeleteTime',
      'updateChatNotificationSettings'                          => 'Update::ChatNotificationSettings',
      'updateChatPendingJoinRequests'                           => 'Update::ChatPendingJoinRequests',
      'updateChatReplyMarkup'                                   => 'Update::ChatReplyMarkup',
      'updateChatBackground'                                    => 'Update::ChatBackground',
      'updateChatTheme'                                         => 'Update::ChatTheme',
      'updateChatUnreadMentionCount'                            => 'Update::ChatUnreadMentionCount',
      'updateChatUnreadReactionCount'                           => 'Update::ChatUnreadReactionCount',
      'updateChatVideoChat'                                     => 'Update::ChatVideoChat',
      'updateChatDefaultDisableNotification'                    => 'Update::ChatDefaultDisableNotification',
      'updateChatHasProtectedContent'                           => 'Update::ChatHasProtectedContent',
      'updateChatIsTranslatable'                                => 'Update::ChatIsTranslatable',
      'updateChatIsMarkedAsUnread'                              => 'Update::ChatIsMarkedAsUnread',
      'updateChatViewAsTopics'                                  => 'Update::ChatViewAsTopics',
      'updateChatBlockList'                                     => 'Update::ChatBlockList',
      'updateChatHasScheduledMessages'                          => 'Update::ChatHasScheduledMessages',
      'updateChatFolders'                                       => 'Update::ChatFolders',
      'updateChatOnlineMemberCount'                             => 'Update::ChatOnlineMemberCount',
      'updateSavedMessagesTopic'                                => 'Update::SavedMessagesTopic',
      'updateSavedMessagesTopicCount'                           => 'Update::SavedMessagesTopicCount',
      'updateDirectMessagesChatTopic'                           => 'Update::DirectMessagesChatTopic',
      'updateTopicMessageCount'                                 => 'Update::TopicMessageCount',
      'updateQuickReplyShortcut'                                => 'Update::QuickReplyShortcut',
      'updateQuickReplyShortcutDeleted'                         => 'Update::QuickReplyShortcutDeleted',
      'updateQuickReplyShortcuts'                               => 'Update::QuickReplyShortcuts',
      'updateQuickReplyShortcutMessages'                        => 'Update::QuickReplyShortcutMessages',
      'updateForumTopicInfo'                                    => 'Update::ForumTopicInfo',
      'updateForumTopic'                                        => 'Update::ForumTopic',
      'updateScopeNotificationSettings'                         => 'Update::ScopeNotificationSettings',
      'updateReactionNotificationSettings'                      => 'Update::ReactionNotificationSettings',
      'updateNotification'                                      => 'Update::Notification',
      'updateNotificationGroup'                                 => 'Update::NotificationGroup',
      'updateActiveNotifications'                               => 'Update::ActiveNotifications',
      'updateHavePendingNotifications'                          => 'Update::HavePendingNotifications',
      'updateDeleteMessages'                                    => 'Update::DeleteMessages',
      'updateChatAction'                                        => 'Update::ChatAction',
      'updatePendingTextMessage'                                => 'Update::PendingTextMessage',
      'updateUserStatus'                                        => 'Update::UserStatus',
      'updateUser'                                              => 'Update::User',
      'updateBasicGroup'                                        => 'Update::BasicGroup',
      'updateSupergroup'                                        => 'Update::Supergroup',
      'updateSecretChat'                                        => 'Update::SecretChat',
      'updateUserFullInfo'                                      => 'Update::UserFullInfo',
      'updateBasicGroupFullInfo'                                => 'Update::BasicGroupFullInfo',
      'updateSupergroupFullInfo'                                => 'Update::SupergroupFullInfo',
      'updateServiceNotification'                               => 'Update::ServiceNotification',
      'updateFile'                                              => 'Update::File',
      'updateFileGenerationStart'                               => 'Update::FileGenerationStart',
      'updateFileGenerationStop'                                => 'Update::FileGenerationStop',
      'updateFileDownloads'                                     => 'Update::FileDownloads',
      'updateFileAddedToDownloads'                              => 'Update::FileAddedToDownloads',
      'updateFileDownload'                                      => 'Update::FileDownload',
      'updateFileRemovedFromDownloads'                          => 'Update::FileRemovedFromDownloads',
      'updateApplicationVerificationRequired'                   => 'Update::ApplicationVerificationRequired',
      'updateApplicationRecaptchaVerificationRequired'          => 'Update::ApplicationRecaptchaVerificationRequired',
      'updateCall'                                              => 'Update::Call',
      'updateGroupCall'                                         => 'Update::GroupCall',
      'updateGroupCallParticipant'                              => 'Update::GroupCallParticipant',
      'updateGroupCallParticipants'                             => 'Update::GroupCallParticipants',
      'updateGroupCallVerificationState'                        => 'Update::GroupCallVerificationState',
      'updateNewGroupCallMessage'                               => 'Update::NewGroupCallMessage',
      'updateNewGroupCallPaidReaction'                          => 'Update::NewGroupCallPaidReaction',
      'updateGroupCallMessageSendFailed'                        => 'Update::GroupCallMessageSendFailed',
      'updateGroupCallMessagesDeleted'                          => 'Update::GroupCallMessagesDeleted',
      'updateLiveStoryTopDonors'                                => 'Update::LiveStoryTopDonors',
      'updateNewCallSignalingData'                              => 'Update::NewCallSignalingData',
      'updateGiftAuctionState'                                  => 'Update::GiftAuctionState',
      'updateActiveGiftAuctions'                                => 'Update::ActiveGiftAuctions',
      'updateUserPrivacySettingRules'                           => 'Update::UserPrivacySettingRules',
      'updateUnreadMessageCount'                                => 'Update::UnreadMessageCount',
      'updateUnreadChatCount'                                   => 'Update::UnreadChatCount',
      'updateStory'                                             => 'Update::Story',
      'updateStoryDeleted'                                      => 'Update::StoryDeleted',
      'updateStoryPostSucceeded'                                => 'Update::StoryPostSucceeded',
      'updateStoryPostFailed'                                   => 'Update::StoryPostFailed',
      'updateChatActiveStories'                                 => 'Update::ChatActiveStories',
      'updateStoryListChatCount'                                => 'Update::StoryListChatCount',
      'updateStoryStealthMode'                                  => 'Update::StoryStealthMode',
      'updateTrustedMiniAppBots'                                => 'Update::TrustedMiniAppBots',
      'updateOption'                                            => 'Update::Option',
      'updateStickerSet'                                        => 'Update::StickerSet',
      'updateInstalledStickerSets'                              => 'Update::InstalledStickerSets',
      'updateTrendingStickerSets'                               => 'Update::TrendingStickerSets',
      'updateRecentStickers'                                    => 'Update::RecentStickers',
      'updateFavoriteStickers'                                  => 'Update::FavoriteStickers',
      'updateSavedAnimations'                                   => 'Update::SavedAnimations',
      'updateSavedNotificationSounds'                           => 'Update::SavedNotificationSounds',
      'updateDefaultBackground'                                 => 'Update::DefaultBackground',
      'updateEmojiChatThemes'                                   => 'Update::EmojiChatThemes',
      'updateAccentColors'                                      => 'Update::AccentColors',
      'updateProfileAccentColors'                               => 'Update::ProfileAccentColors',
      'updateLanguagePackStrings'                               => 'Update::LanguagePackStrings',
      'updateConnectionState'                                   => 'Update::ConnectionState',
      'updateFreezeState'                                       => 'Update::FreezeState',
      'updateAgeVerificationParameters'                         => 'Update::AgeVerificationParameters',
      'updateTermsOfService'                                    => 'Update::TermsOfService',
      'updateUnconfirmedSession'                                => 'Update::UnconfirmedSession',
      'updateAttachmentMenuBots'                                => 'Update::AttachmentMenuBots',
      'updateWebAppMessageSent'                                 => 'Update::WebAppMessageSent',
      'updateActiveEmojiReactions'                              => 'Update::ActiveEmojiReactions',
      'updateAvailableMessageEffects'                           => 'Update::AvailableMessageEffects',
      'updateDefaultReactionType'                               => 'Update::DefaultReactionType',
      'updateDefaultPaidReactionType'                           => 'Update::DefaultPaidReactionType',
      'updateSavedMessagesTags'                                 => 'Update::SavedMessagesTags',
      'updateActiveLiveLocationMessages'                        => 'Update::ActiveLiveLocationMessages',
      'updateOwnedStarCount'                                    => 'Update::OwnedStarCount',
      'updateOwnedTonCount'                                     => 'Update::OwnedTonCount',
      'updateChatRevenueAmount'                                 => 'Update::ChatRevenueAmount',
      'updateStarRevenueStatus'                                 => 'Update::StarRevenueStatus',
      'updateTonRevenueStatus'                                  => 'Update::TonRevenueStatus',
      'updateSpeechRecognitionTrial'                            => 'Update::SpeechRecognitionTrial',
      'updateGroupCallMessageLevels'                            => 'Update::GroupCallMessageLevels',
      'updateDiceEmojis'                                        => 'Update::DiceEmojis',
      'updateAnimatedEmojiMessageClicked'                       => 'Update::AnimatedEmojiMessageClicked',
      'updateAnimationSearchParameters'                         => 'Update::AnimationSearchParameters',
      'updateSuggestedActions'                                  => 'Update::SuggestedActions',
      'updateSpeedLimitNotification'                            => 'Update::SpeedLimitNotification',
      'updateContactCloseBirthdays'                             => 'Update::ContactCloseBirthdays',
      'updateAutosaveSettings'                                  => 'Update::AutosaveSettings',
      'updateBusinessConnection'                                => 'Update::BusinessConnection',
      'updateNewBusinessMessage'                                => 'Update::NewBusinessMessage',
      'updateBusinessMessageEdited'                             => 'Update::BusinessMessageEdited',
      'updateBusinessMessagesDeleted'                           => 'Update::BusinessMessagesDeleted',
      'updateNewInlineQuery'                                    => 'Update::NewInlineQuery',
      'updateNewChosenInlineResult'                             => 'Update::NewChosenInlineResult',
      'updateNewCallbackQuery'                                  => 'Update::NewCallbackQuery',
      'updateNewInlineCallbackQuery'                            => 'Update::NewInlineCallbackQuery',
      'updateNewBusinessCallbackQuery'                          => 'Update::NewBusinessCallbackQuery',
      'updateNewShippingQuery'                                  => 'Update::NewShippingQuery',
      'updateNewPreCheckoutQuery'                               => 'Update::NewPreCheckoutQuery',
      'updateNewCustomEvent'                                    => 'Update::NewCustomEvent',
      'updateNewCustomQuery'                                    => 'Update::NewCustomQuery',
      'updatePoll'                                              => 'Update::Poll',
      'updatePollAnswer'                                        => 'Update::PollAnswer',
      'updateChatMember'                                        => 'Update::ChatMember',
      'updateNewChatJoinRequest'                                => 'Update::NewChatJoinRequest',
      'updateChatBoost'                                         => 'Update::ChatBoost',
      'updateMessageReaction'                                   => 'Update::MessageReaction',
      'updateMessageReactions'                                  => 'Update::MessageReactions',
      'updatePaidMediaPurchased'                                => 'Update::PaidMediaPurchased',
      'updates'                                                 => 'Updates',
      'LogStream'                                               => 'LogStream',
      'logStreamDefault'                                        => 'LogStream::Default',
      'logStreamFile'                                           => 'LogStream::File',
      'logStreamEmpty'                                          => 'LogStream::Empty',
      'logVerbosityLevel'                                       => 'LogVerbosityLevel',
      'logTags'                                                 => 'LogTags',
      'userSupportInfo'                                         => 'UserSupportInfo',
      'testVectorStringObject'                                  => 'TestVectorStringObject'
  }.freeze

  module_function

  # Recursively wraps a hash into typed classes
  def wrap(object)
    # Wrapping each entry in array
    if object.kind_of?(::Array)
      object.map { |o| wrap(o) }
    elsif object.kind_of?(::Hash)
      type = object.delete('@type')

      object.each do |key, val|
        if val.respond_to?(:each)
          object[key] = wrap(val)
        end
      end

      unless type
        return object
      end

      if (klass = LOOKUP_TABLE[type])
        const_get(klass).new(object)
      else
        raise ArgumentError.new("Can't find class for #{type}")
      end
    else
      object
    end
  end

  # Simple implementation for internal use only.
  def camelize(str)
    str.gsub(/(?:_|(\/)|^)([a-z\d]*)/i) { "#{$1}#{$2.capitalize}" }
  end

  %w[
    accent_color
    accepted_gift_types
    account_info
    account_ttl
    active_story_state
    added_reaction
    added_reactions
    address
    advertisement_sponsor
    affiliate_info
    affiliate_program_info
    affiliate_program_parameters
    affiliate_program_sort_order
    affiliate_type
    age_verification_parameters
    alternative_video
    animated_chat_photo
    animated_emoji
    animation
    animations
    archive_chat_list_settings
    attachment_menu_bot
    attachment_menu_bot_color
    auction_bid
    auction_round
    auction_state
    audio
    audios
    authentication_code_info
    authentication_code_type
    authorization_state
    auto_download_settings
    auto_download_settings_presets
    autosave_settings
    autosave_settings_exception
    autosave_settings_scope
    available_gift
    available_gifts
    available_reaction
    available_reactions
    background
    background_fill
    background_type
    backgrounds
    bank_card_action_open_url
    bank_card_info
    base
    basic_group
    basic_group_full_info
    birthdate
    block_list
    bot_command
    bot_command_scope
    bot_commands
    bot_info
    bot_media_preview
    bot_media_preview_info
    bot_media_previews
    bot_menu_button
    bot_verification
    bot_verification_parameters
    bot_write_access_allow_reason
    built_in_theme
    business_away_message_schedule
    business_away_message_settings
    business_bot_manage_bar
    business_bot_rights
    business_chat_link
    business_chat_link_info
    business_chat_links
    business_connected_bot
    business_connection
    business_feature
    business_feature_promotion_animation
    business_features
    business_greeting_message_settings
    business_info
    business_location
    business_message
    business_messages
    business_opening_hours
    business_opening_hours_interval
    business_recipients
    business_start_page
    call
    call_discard_reason
    call_id
    call_problem
    call_protocol
    call_server
    call_server_type
    call_state
    callback_query_answer
    callback_query_payload
    can_post_story_result
    can_send_gift_result
    can_send_message_to_user_result
    can_transfer_ownership_result
    chat
    chat_action
    chat_action_bar
    chat_active_stories
    chat_administrator
    chat_administrator_rights
    chat_administrators
    chat_available_reactions
    chat_background
    chat_boost
    chat_boost_features
    chat_boost_level_features
    chat_boost_link
    chat_boost_link_info
    chat_boost_slot
    chat_boost_slots
    chat_boost_source
    chat_boost_status
    chat_event
    chat_event_action
    chat_event_log_filters
    chat_events
    chat_folder
    chat_folder_icon
    chat_folder_info
    chat_folder_invite_link
    chat_folder_invite_link_info
    chat_folder_invite_links
    chat_folder_name
    chat_invite_link
    chat_invite_link_count
    chat_invite_link_counts
    chat_invite_link_info
    chat_invite_link_member
    chat_invite_link_members
    chat_invite_link_subscription_info
    chat_invite_links
    chat_join_request
    chat_join_requests
    chat_join_requests_info
    chat_list
    chat_lists
    chat_location
    chat_member
    chat_member_status
    chat_members
    chat_members_filter
    chat_message_sender
    chat_message_senders
    chat_notification_settings
    chat_permissions
    chat_photo
    chat_photo_info
    chat_photo_sticker
    chat_photo_sticker_type
    chat_photos
    chat_position
    chat_revenue_amount
    chat_revenue_statistics
    chat_revenue_transaction
    chat_revenue_transaction_type
    chat_revenue_transactions
    chat_source
    chat_statistics
    chat_statistics_administrator_actions_info
    chat_statistics_interaction_info
    chat_statistics_inviter_info
    chat_statistics_message_sender_info
    chat_statistics_object_type
    chat_theme
    chat_type
    chats
    check_chat_username_result
    check_sticker_set_name_result
    checklist
    checklist_task
    close_birthday_user
    closed_vector_path
    collectible_item_info
    collectible_item_type
    connected_affiliate_program
    connected_affiliate_programs
    connected_website
    connected_websites
    connection_state
    contact
    count
    countries
    country_info
    created_basic_group_chat
    current_weather
    custom_request_result
    data
    database_statistics
    date
    date_range
    dated_file
    deep_link_info
    device_token
    dice_stickers
    direct_messages_chat_topic
    document
    downloaded_file_counts
    draft_message
    email_address_authentication
    email_address_authentication_code_info
    email_address_reset_state
    emoji_categories
    emoji_category
    emoji_category_source
    emoji_category_type
    emoji_chat_theme
    emoji_keyword
    emoji_keywords
    emoji_reaction
    emoji_status
    emoji_status_custom_emojis
    emoji_status_type
    emoji_statuses
    emojis
    encrypted_credentials
    encrypted_passport_element
    error
    fact_check
    failed_to_add_member
    failed_to_add_members
    file
    file_download
    file_downloaded_prefix_size
    file_type
    firebase_authentication_settings
    firebase_device_verification_parameters
    formatted_text
    forum_topic
    forum_topic_icon
    forum_topic_info
    forum_topics
    forward_source
    found_affiliate_program
    found_affiliate_programs
    found_chat_boosts
    found_chat_messages
    found_file_downloads
    found_messages
    found_position
    found_positions
    found_public_posts
    found_stories
    found_users
    found_web_app
    game
    game_high_score
    game_high_scores
    gift
    gift_auction
    gift_auction_acquired_gift
    gift_auction_acquired_gifts
    gift_auction_state
    gift_background
    gift_chat_theme
    gift_chat_themes
    gift_collection
    gift_collections
    gift_for_resale
    gift_for_resale_order
    gift_purchase_limits
    gift_purchase_offer_state
    gift_resale_parameters
    gift_resale_price
    gift_resale_result
    gift_settings
    gift_upgrade_preview
    gift_upgrade_price
    gift_upgrade_variants
    gifts_for_resale
    giveaway_info
    giveaway_parameters
    giveaway_participant_status
    giveaway_prize
    group_call
    group_call_data_channel
    group_call_id
    group_call_info
    group_call_join_parameters
    group_call_message
    group_call_message_level
    group_call_participant
    group_call_participant_video_info
    group_call_participants
    group_call_recent_speaker
    group_call_stream
    group_call_streams
    group_call_video_quality
    group_call_video_source_group
    hashtags
    http_url
    identity_document
    imported_contact
    imported_contacts
    inline_keyboard_button
    inline_keyboard_button_type
    inline_query_result
    inline_query_results
    inline_query_results_button
    inline_query_results_button_type
    input_background
    input_business_chat_link
    input_business_start_page
    input_chat_photo
    input_chat_theme
    input_checklist
    input_checklist_task
    input_credentials
    input_file
    input_group_call
    input_identity_document
    input_inline_query_result
    input_invoice
    input_message_content
    input_message_reply_to
    input_paid_media
    input_paid_media_type
    input_passport_element
    input_passport_element_error
    input_passport_element_error_source
    input_personal_document
    input_sticker
    input_story_area
    input_story_area_type
    input_story_areas
    input_story_content
    input_suggested_post_info
    input_text_quote
    input_thumbnail
    internal_link_type
    invite_group_call_participant_result
    invite_link_chat_type
    invoice
    json_object_member
    json_value
    keyboard_button
    keyboard_button_type
    labeled_price_part
    language_pack_info
    language_pack_string
    language_pack_string_value
    language_pack_strings
    link_preview
    link_preview_album_media
    link_preview_options
    link_preview_type
    live_story_donors
    local_file
    localization_target_info
    location
    location_address
    log_stream
    log_tags
    log_verbosity_level
    login_url_info
    main_web_app
    mask_point
    mask_position
    message
    message_auto_delete_time
    message_calendar
    message_calendar_day
    message_content
    message_copy_options
    message_effect
    message_effect_type
    message_file_type
    message_forward_info
    message_import_info
    message_interaction_info
    message_link
    message_link_info
    message_origin
    message_position
    message_positions
    message_properties
    message_reaction
    message_reactions
    message_read_date
    message_reply_info
    message_reply_to
    message_scheduling_state
    message_self_destruct_type
    message_send_options
    message_sender
    message_senders
    message_sending_state
    message_source
    message_statistics
    message_thread_info
    message_topic
    message_viewer
    message_viewers
    messages
    minithumbnail
    network_statistics
    network_statistics_entry
    network_type
    new_chat_privacy_settings
    notification
    notification_group
    notification_group_type
    notification_settings_scope
    notification_sound
    notification_sounds
    notification_type
    ok
    option_value
    order_info
    outline
    page_block
    page_block_caption
    page_block_horizontal_alignment
    page_block_list_item
    page_block_related_article
    page_block_table_cell
    page_block_vertical_alignment
    paid_media
    paid_reaction_type
    paid_reactor
    passkey
    passkeys
    passport_authorization_form
    passport_element
    passport_element_error
    passport_element_error_source
    passport_element_type
    passport_elements
    passport_elements_with_errors
    passport_required_element
    passport_suitable_element
    password_state
    payment_form
    payment_form_type
    payment_option
    payment_provider
    payment_receipt
    payment_receipt_type
    payment_result
    personal_details
    personal_document
    phone_number_authentication_settings
    phone_number_code_type
    phone_number_info
    photo
    photo_size
    point
    poll
    poll_option
    poll_type
    premium_feature
    premium_feature_promotion_animation
    premium_features
    premium_gift_code_info
    premium_gift_payment_option
    premium_gift_payment_options
    premium_giveaway_payment_option
    premium_giveaway_payment_options
    premium_limit
    premium_limit_type
    premium_payment_option
    premium_source
    premium_state
    premium_state_payment_option
    premium_story_feature
    prepaid_giveaway
    prepared_inline_message
    prepared_inline_message_id
    product_info
    profile_accent_color
    profile_accent_colors
    profile_photo
    profile_tab
    proxies
    proxy
    proxy_type
    public_chat_type
    public_forward
    public_forwards
    public_post_search_limits
    push_message_content
    push_receiver_id
    quick_reply_message
    quick_reply_messages
    quick_reply_shortcut
    reaction_notification_settings
    reaction_notification_source
    reaction_type
    reaction_unavailability_reason
    read_date_privacy_settings
    received_gift
    received_gifts
    recommended_chat_folder
    recommended_chat_folders
    recovery_email_address
    remote_file
    reply_markup
    report_chat_result
    report_option
    report_reason
    report_sponsored_result
    report_story_result
    resend_code_reason
    reset_password_result
    restriction_info
    revenue_withdrawal_state
    rich_text
    rtmp_url
    saved_credentials
    saved_messages_tag
    saved_messages_tags
    saved_messages_topic
    saved_messages_topic_type
    scope_autosave_settings
    scope_notification_settings
    search_messages_chat_type_filter
    search_messages_filter
    seconds
    secret_chat
    secret_chat_state
    sent_gift
    sent_web_app_message
    session
    session_type
    sessions
    shared_chat
    shared_user
    shipping_option
    speech_recognition_result
    sponsored_chat
    sponsored_chats
    sponsored_message
    sponsored_messages
    star_amount
    star_count
    star_giveaway_payment_option
    star_giveaway_payment_options
    star_giveaway_winner_option
    star_payment_option
    star_payment_options
    star_revenue_statistics
    star_revenue_status
    star_subscription
    star_subscription_pricing
    star_subscription_type
    star_subscriptions
    star_transaction
    star_transaction_type
    star_transactions
    start_live_story_result
    statistical_graph
    statistical_value
    sticker
    sticker_format
    sticker_full_type
    sticker_set
    sticker_set_info
    sticker_sets
    sticker_type
    stickers
    storage_statistics
    storage_statistics_by_chat
    storage_statistics_by_file_type
    storage_statistics_fast
    store_payment_purpose
    store_transaction
    stories
    story
    story_album
    story_albums
    story_area
    story_area_position
    story_area_type
    story_content
    story_full_id
    story_info
    story_interaction
    story_interaction_info
    story_interaction_type
    story_interactions
    story_list
    story_origin
    story_privacy_settings
    story_repost_info
    story_statistics
    story_video
    suggested_action
    suggested_post_info
    suggested_post_price
    suggested_post_refund_reason
    suggested_post_state
    supergroup
    supergroup_full_info
    supergroup_members_filter
    t_me_url
    t_me_url_type
    t_me_urls
    target_chat
    target_chat_types
    telegram_payment_purpose
    temporary_password_state
    terms_of_service
    test_vector_string_object
    text
    text_entities
    text_entity
    text_entity_type
    text_parse_mode
    text_quote
    theme_parameters
    theme_settings
    thumbnail
    thumbnail_format
    time_zone
    time_zones
    ton_revenue_statistics
    ton_revenue_status
    ton_transaction
    ton_transaction_type
    ton_transactions
    top_chat_category
    transaction_direction
    trending_sticker_sets
    unconfirmed_session
    unread_reaction
    update
    updates
    upgrade_gift_result
    upgraded_gift
    upgraded_gift_attribute_id
    upgraded_gift_backdrop
    upgraded_gift_backdrop_colors
    upgraded_gift_backdrop_count
    upgraded_gift_colors
    upgraded_gift_model
    upgraded_gift_model_count
    upgraded_gift_origin
    upgraded_gift_original_details
    upgraded_gift_symbol
    upgraded_gift_symbol_count
    upgraded_gift_value_info
    user
    user_auction_bid
    user_full_info
    user_link
    user_privacy_setting
    user_privacy_setting_rule
    user_privacy_setting_rules
    user_rating
    user_status
    user_support_info
    user_type
    usernames
    users
    validated_order_info
    vector_path_command
    venue
    verification_status
    video
    video_chat
    video_message_advertisement
    video_message_advertisements
    video_note
    video_storyboard
    voice_note
    web_app
    web_app_info
    web_app_open_mode
    web_app_open_parameters
    web_page_instant_view
  ].each do |type|
    autoload camelize(type), "tdlib/types/#{type}"
  end
end
