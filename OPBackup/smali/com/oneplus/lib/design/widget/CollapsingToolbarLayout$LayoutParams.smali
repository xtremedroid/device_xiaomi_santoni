.class public Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final f:F = 0.5f


# instance fields
.field d:I

.field e:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1178
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1160
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->d:I

    .line 1161
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->e:F

    .line 1179
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 1182
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1160
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->d:I

    .line 1161
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->e:F

    .line 1183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1164
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1160
    iput v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->d:I

    .line 1161
    iput v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->e:F

    .line 1166
    sget-object v0, Lcom/oneplus/a/b$m;->OpCollapsingToolbarLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1168
    sget v1, Lcom/oneplus/a/b$m;->OpCollapsingToolbarLayout_Layout_op_layout_collapseMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->d:I

    .line 1171
    sget v1, Lcom/oneplus/a/b$m;->OpCollapsingToolbarLayout_Layout_op_layout_collapseParallaxMultiplier:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->a(F)V

    .line 1174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1175
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1186
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1160
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->d:I

    .line 1161
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->e:F

    .line 1187
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1190
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1160
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->d:I

    .line 1161
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->e:F

    .line 1191
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 1194
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 1160
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->d:I

    .line 1161
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->e:F

    .line 1195
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1215
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->d:I

    return v0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 1228
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->e:F

    .line 1229
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 1204
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->d:I

    .line 1205
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 1238
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->e:F

    return v0
.end method
