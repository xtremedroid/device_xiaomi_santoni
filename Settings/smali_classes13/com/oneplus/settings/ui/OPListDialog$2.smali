.class Lcom/oneplus/settings/ui/OPListDialog$2;
.super Ljava/lang/Object;
.source "OPListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPListDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPListDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPListDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPListDialog;

    .line 100
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$2;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog$2;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPListDialog;->access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog$2;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPListDialog;->access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPListDialog$2;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPListDialog;->access$200(Lcom/oneplus/settings/ui/OPListDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;->OnDialogListConfirmClick(I)V

    .line 107
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 108
    return-void
.end method
