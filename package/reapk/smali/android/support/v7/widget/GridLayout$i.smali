.class final Landroid/support/v7/widget/GridLayout$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public final c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;)V"
        }
    .end annotation

    .prologue
    .line 2198
    .local p0, "this":Landroid/support/v7/widget/GridLayout$i;, "Landroid/support/v7/widget/GridLayout$i<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2199
    invoke-static {p1}, Landroid/support/v7/widget/GridLayout$i;->a([Ljava/lang/Object;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$i;->a:[I

    .line 2201
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$i;->a:[I

    invoke-static {p1, v0}, Landroid/support/v7/widget/GridLayout$i;->a([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$i;->b:[Ljava/lang/Object;

    .line 2202
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$i;->a:[I

    invoke-static {p2, v0}, Landroid/support/v7/widget/GridLayout$i;->a([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$i;->c:[Ljava/lang/Object;

    .line 2203
    return-void
.end method

.method private static a([Ljava/lang/Object;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([TK;)[I"
        }
    .end annotation

    .prologue
    .line 2210
    .local p0, "keys":[Ljava/lang/Object;, "[TK;"
    array-length v5, p0

    .line 2211
    .local v5, "size":I
    new-array v4, v5, [I

    .line 2213
    .local v4, "result":[I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2214
    .local v3, "keyToIndex":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 2215
    aget-object v2, p0, v0

    .line 2216
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2217
    .local v1, "index":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 2218
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2219
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v0

    .line 2214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2223
    .end local v1    # "index":Ljava/lang/Integer;
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-object v4
.end method

.method private static a([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([TK;[I)[TK;"
        }
    .end annotation

    .prologue
    .line 2230
    .local p0, "a":[Ljava/lang/Object;, "[TK;"
    array-length v3, p0

    .line 2231
    .local v3, "size":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 2232
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, -0x1

    invoke-static {p1, v4}, Landroid/support/v7/widget/GridLayout;->a([II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 2235
    .local v2, "result":[Ljava/lang/Object;, "[TK;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2236
    aget v4, p1, v1

    aget-object v5, p0, v1

    aput-object v5, v2, v4

    .line 2235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2238
    :cond_0
    return-object v2
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 2206
    .local p0, "this":Landroid/support/v7/widget/GridLayout$i;, "Landroid/support/v7/widget/GridLayout$i<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$i;->c:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$i;->a:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method