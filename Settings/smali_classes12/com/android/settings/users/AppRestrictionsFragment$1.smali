.class Lcom/android/settings/users/AppRestrictionsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/users/AppRestrictionsFragment;

    .line 111
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$000(Lcom/android/settings/users/AppRestrictionsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$100(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settingslib/users/AppRestrictionsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    .line 122
    :cond_0
    return-void
.end method
