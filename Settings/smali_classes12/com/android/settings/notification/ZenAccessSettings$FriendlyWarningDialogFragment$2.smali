.class Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    .line 323
    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;->this$0:Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 325
    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;->this$0:Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;->val$pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenAccessSettings;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;->this$0:Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;->val$pkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/ZenAccessSettings;->access$100(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 327
    return-void
.end method
