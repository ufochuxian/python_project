.class Lorg/joda/time/b/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/b/m;
.implements Lorg/joda/time/b/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:[Lorg/joda/time/b/n;

.field private final b:[Lorg/joda/time/b/m;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1774
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/b/l$a;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1778
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1779
    iput-object v3, p0, Lorg/joda/time/b/l$a;->a:[Lorg/joda/time/b/n;

    .line 1785
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1786
    iput-object v3, p0, Lorg/joda/time/b/l$a;->b:[Lorg/joda/time/b/m;

    .line 1791
    :goto_1
    return-void

    .line 1781
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/joda/time/b/n;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/b/n;

    iput-object v0, p0, Lorg/joda/time/b/l$a;->a:[Lorg/joda/time/b/n;

    goto :goto_0

    .line 1788
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/joda/time/b/m;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/b/m;

    iput-object v0, p0, Lorg/joda/time/b/l$a;->b:[Lorg/joda/time/b/m;

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1843
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1844
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    .line 1845
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1846
    instance-of v3, v0, Lorg/joda/time/b/n;

    if-eqz v3, :cond_0

    .line 1847
    instance-of v3, v0, Lorg/joda/time/b/l$a;

    if-eqz v3, :cond_2

    .line 1848
    check-cast v0, Lorg/joda/time/b/l$a;

    iget-object v0, v0, Lorg/joda/time/b/l$a;->a:[Lorg/joda/time/b/n;

    invoke-direct {p0, p2, v0}, Lorg/joda/time/b/l$a;->a(Ljava/util/List;[Ljava/lang/Object;)V

    .line 1854
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1855
    instance-of v3, v0, Lorg/joda/time/b/m;

    if-eqz v3, :cond_1

    .line 1856
    instance-of v3, v0, Lorg/joda/time/b/l$a;

    if-eqz v3, :cond_3

    .line 1857
    check-cast v0, Lorg/joda/time/b/l$a;

    iget-object v0, v0, Lorg/joda/time/b/l$a;->b:[Lorg/joda/time/b/m;

    invoke-direct {p0, p3, v0}, Lorg/joda/time/b/l$a;->a(Ljava/util/List;[Ljava/lang/Object;)V

    .line 1844
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 1850
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1859
    :cond_3
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1863
    :cond_4
    return-void
.end method

.method private a(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1866
    if-eqz p2, :cond_0

    .line 1867
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1868
    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1871
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/joda/time/i;Ljava/lang/String;ILjava/util/Locale;)I
    .locals 4

    .prologue
    .line 1830
    iget-object v1, p0, Lorg/joda/time/b/l$a;->b:[Lorg/joda/time/b/m;

    .line 1831
    if-nez v1, :cond_0

    .line 1832
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1835
    :cond_0
    array-length v2, v1

    .line 1836
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz p3, :cond_1

    .line 1837
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/joda/time/b/m;->a(Lorg/joda/time/i;Ljava/lang/String;ILjava/util/Locale;)I

    move-result p3

    .line 1836
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1839
    :cond_1
    return p3
.end method

.method public a(Lorg/joda/time/o;ILjava/util/Locale;)I
    .locals 5

    .prologue
    .line 1794
    const/4 v1, 0x0

    .line 1795
    iget-object v2, p0, Lorg/joda/time/b/l$a;->a:[Lorg/joda/time/b/n;

    .line 1796
    array-length v0, v2

    :goto_0
    if-ge v1, p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1797
    aget-object v3, v2, v0

    const v4, 0x7fffffff

    invoke-interface {v3, p1, v4, p3}, Lorg/joda/time/b/n;->a(Lorg/joda/time/o;ILjava/util/Locale;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 1799
    :cond_0
    return v1
.end method

.method public a(Lorg/joda/time/o;Ljava/util/Locale;)I
    .locals 4

    .prologue
    .line 1803
    const/4 v1, 0x0

    .line 1804
    iget-object v2, p0, Lorg/joda/time/b/l$a;->a:[Lorg/joda/time/b/n;

    .line 1805
    array-length v0, v2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1806
    aget-object v3, v2, v0

    invoke-interface {v3, p1, p2}, Lorg/joda/time/b/n;->a(Lorg/joda/time/o;Ljava/util/Locale;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 1808
    :cond_0
    return v1
.end method

.method public a(Ljava/io/Writer;Lorg/joda/time/o;Ljava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1820
    iget-object v1, p0, Lorg/joda/time/b/l$a;->a:[Lorg/joda/time/b/n;

    .line 1821
    array-length v2, v1

    .line 1822
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1823
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/b/n;->a(Ljava/io/Writer;Lorg/joda/time/o;Ljava/util/Locale;)V

    .line 1822
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1825
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Lorg/joda/time/o;Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 1812
    iget-object v1, p0, Lorg/joda/time/b/l$a;->a:[Lorg/joda/time/b/n;

    .line 1813
    array-length v2, v1

    .line 1814
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1815
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/b/n;->a(Ljava/lang/StringBuffer;Lorg/joda/time/o;Ljava/util/Locale;)V

    .line 1814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1817
    :cond_0
    return-void
.end method
