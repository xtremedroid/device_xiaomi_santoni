.class final Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->a(Landroid/view/View;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$a;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$a;FLcom/oneplus/lib/menu/EpicenterTranslateClipReveal$a;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$a;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$1;->b:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$1;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$1;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 227
    return-void
.end method
