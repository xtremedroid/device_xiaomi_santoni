.class public Lcom/oneplus/lib/widget/recyclerview/b;
.super Lcom/oneplus/lib/widget/recyclerview/x;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/lib/widget/recyclerview/x",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/oneplus/lib/widget/recyclerview/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/k",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/x;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/x;-><init>(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/x;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/x;-><init>(Lcom/oneplus/lib/widget/recyclerview/x;)V

    .line 69
    return-void
.end method

.method private b()Lcom/oneplus/lib/widget/recyclerview/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/lib/widget/recyclerview/k",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/b;->a:Lcom/oneplus/lib/widget/recyclerview/k;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/b$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/b$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/b;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/b;->a:Lcom/oneplus/lib/widget/recyclerview/k;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/b;->a:Lcom/oneplus/lib/widget/recyclerview/k;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/k;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/k;->b(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/k;->c(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/b;->b()Lcom/oneplus/lib/widget/recyclerview/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/k;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/b;->b()Lcom/oneplus/lib/widget/recyclerview/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/k;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/b;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/b;->a(I)V

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/lib/widget/recyclerview/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/b;->b()Lcom/oneplus/lib/widget/recyclerview/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/k;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
