.class Lorg/xbill/DNS/b$a;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "maxsize"    # I

    .prologue
    .line 132
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/b$a;->a:I

    .line 133
    iput p1, p0, Lorg/xbill/DNS/b$a;->a:I

    .line 134
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/xbill/DNS/b$a;->a:I

    return v0
.end method

.method a(I)V
    .locals 0
    .param p1, "maxsize"    # I

    .prologue
    .line 148
    iput p1, p0, Lorg/xbill/DNS/b$a;->a:I

    .line 149
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    .prologue
    .line 152
    iget v0, p0, Lorg/xbill/DNS/b$a;->a:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/xbill/DNS/b$a;->size()I

    move-result v0

    iget v1, p0, Lorg/xbill/DNS/b$a;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
