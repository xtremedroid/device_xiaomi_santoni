.class public Lcom/oneplus/lib/app/appcompat/ai;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/TypedArray;

.field private c:Landroid/util/TypedValue;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ai;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    .line 50
    return-void
.end method

.method public static a(Landroid/content/Context;I[I)Lcom/oneplus/lib/app/appcompat/ai;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ai;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/ai;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/oneplus/lib/app/appcompat/ai;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ai;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/ai;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/ai;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ai;

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/ai;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public a(IF)F
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public a(IIIF)F
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    return v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public a(II)I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public a(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ai;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/lib/app/appcompat/r;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILandroid/util/TypedValue;)Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public a(IZ)Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public b(IF)F
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    return v0
.end method

.method public b(II)I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method public b(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/q;->a()Lcom/oneplus/lib/app/appcompat/q;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ai;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/oneplus/lib/app/appcompat/q;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public c(II)I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public c()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public d(II)I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public d(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(II)I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public f(II)I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(II)I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public g(I)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ai;->a:Landroid/content/Context;

    .line 121
    invoke-static {v1, v0}, Lcom/oneplus/lib/app/appcompat/r;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public h(I)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i(I)I
    .locals 2

    .prologue
    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    .line 178
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->c:Landroid/util/TypedValue;

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->c:Landroid/util/TypedValue;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ai;->c:Landroid/util/TypedValue;

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 178
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->c:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->type:I

    goto :goto_0
.end method

.method public j(I)Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public k(I)Landroid/util/TypedValue;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ai;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    return-object v0
.end method
