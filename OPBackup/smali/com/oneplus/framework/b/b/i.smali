.class public Lcom/oneplus/framework/b/b/i;
.super Ljava/lang/Object;
.source "FloatColumnConverter.java"

# interfaces
.implements Lcom/oneplus/framework/b/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/framework/b/b/e",
        "<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;I)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 31
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .prologue
    .line 21
    return-object p1
.end method

.method public a(Ljava/lang/Float;Ljava/lang/ClassLoader;)Ljava/lang/Float;
    .locals 0

    .prologue
    .line 36
    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/oneplus/framework/b/b/i;->a(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/framework/b/b/i;->a(Ljava/lang/Float;Ljava/lang/ClassLoader;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "REAL"

    return-object v0
.end method

.method public synthetic b(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/framework/b/b/i;->a(Landroid/database/Cursor;I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/oneplus/framework/b/b/i;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
