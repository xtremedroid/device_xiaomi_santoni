.class Lcom/android/settings/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/IccLockSettings;

    .line 554
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .line 557
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 558
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1}, Lcom/android/settings/IccLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 559
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 561
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 561
    :goto_0
    invoke-static {v2, v3}, Lcom/android/settings/IccLockSettings;->access$402(Lcom/android/settings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 565
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)V

    .line 566
    return-void
.end method
