.class Lcom/android/settings/localepicker/LocaleListEditor$4;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/localepicker/LocaleListEditor;

    .line 207
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 219
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->access$102(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z

    .line 220
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->access$002(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z

    .line 221
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->access$200(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->removeChecked()V

    .line 222
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->access$300(Lcom/android/settings/localepicker/LocaleListEditor;Z)V

    .line 223
    return-void
.end method
