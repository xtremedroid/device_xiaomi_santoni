.class Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;->a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;->a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->e()V

    .line 101
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;->a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;->a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->a:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;->a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-object v2, v2, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->a:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 102
    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;->a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-object v2, v2, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->d:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 103
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->c:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 104
    return-void
.end method
