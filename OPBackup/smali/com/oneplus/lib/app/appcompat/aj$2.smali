.class Lcom/oneplus/lib/app/appcompat/aj$2;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/lib/app/appcompat/aj;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/aj;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/aj$2;->a:Lcom/oneplus/lib/app/appcompat/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/aj$2;->a:Lcom/oneplus/lib/app/appcompat/aj;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/aj;->k:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
