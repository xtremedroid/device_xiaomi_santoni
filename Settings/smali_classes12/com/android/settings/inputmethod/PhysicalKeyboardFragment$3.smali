.class Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$3;
.super Landroid/database/ContentObserver;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 227
    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$3;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 230
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$3;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->access$200(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    .line 231
    return-void
.end method
