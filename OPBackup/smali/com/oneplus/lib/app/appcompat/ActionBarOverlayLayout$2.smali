.class Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;
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
    .line 90
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;->a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;->a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->e()V

    .line 93
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;->a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;->a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->a:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;->a:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-object v2, v2, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->d:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 94
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->c:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 95
    return-void
.end method
