.class public Lorg/joda/time/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/b/l$a;,
        Lorg/joda/time/b/l$g;,
        Lorg/joda/time/b/l$d;,
        Lorg/joda/time/b/l$c;,
        Lorg/joda/time/b/l$b;,
        Lorg/joda/time/b/l$f;,
        Lorg/joda/time/b/l$h;,
        Lorg/joda/time/b/l$e;
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3

.field private static final d:I = 0x4

.field private static final e:I = 0x5

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3

.field private static final j:I = 0x4

.field private static final k:I = 0x5

.field private static final l:I = 0x6

.field private static final m:I = 0x7

.field private static final n:I = 0x8

.field private static final o:I = 0x9

.field private static final p:I = 0x9


# instance fields
.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Lorg/joda/time/b/l$e;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Z

.field private y:[Lorg/joda/time/b/l$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p0}, Lorg/joda/time/b/l;->d()V

    .line 103
    return-void
.end method

.method private static a(Ljava/util/List;ZZ)Lorg/joda/time/b/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Lorg/joda/time/b/k;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 795
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder has created neither a printer nor a parser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 799
    if-lt v1, v3, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/joda/time/b/l$g;

    if-eqz v0, :cond_1

    .line 800
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/b/l$g;

    .line 801
    invoke-static {v0}, Lorg/joda/time/b/l$g;->a(Lorg/joda/time/b/l$g;)Lorg/joda/time/b/m;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lorg/joda/time/b/l$g;->b(Lorg/joda/time/b/l$g;)Lorg/joda/time/b/n;

    move-result-object v2

    if-nez v2, :cond_1

    .line 802
    invoke-interface {p0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/joda/time/b/l;->a(Ljava/util/List;ZZ)Lorg/joda/time/b/k;

    move-result-object v1

    .line 803
    invoke-virtual {v1}, Lorg/joda/time/b/k;->b()Lorg/joda/time/b/n;

    move-result-object v2

    invoke-virtual {v1}, Lorg/joda/time/b/k;->d()Lorg/joda/time/b/m;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/joda/time/b/l$g;->a(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)Lorg/joda/time/b/l$g;

    move-result-object v1

    .line 804
    new-instance v0, Lorg/joda/time/b/k;

    invoke-direct {v0, v1, v1}, Lorg/joda/time/b/k;-><init>(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)V

    .line 813
    :goto_0
    return-object v0

    .line 807
    :cond_1
    invoke-static {p0}, Lorg/joda/time/b/l;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    .line 808
    if-eqz p1, :cond_2

    .line 809
    new-instance v1, Lorg/joda/time/b/k;

    aget-object v0, v3, v5

    check-cast v0, Lorg/joda/time/b/m;

    invoke-direct {v1, v6, v0}, Lorg/joda/time/b/k;-><init>(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)V

    move-object v0, v1

    goto :goto_0

    .line 810
    :cond_2
    if-eqz p2, :cond_3

    .line 811
    new-instance v1, Lorg/joda/time/b/k;

    aget-object v0, v3, v4

    check-cast v0, Lorg/joda/time/b/n;

    invoke-direct {v1, v0, v6}, Lorg/joda/time/b/k;-><init>(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)V

    move-object v0, v1

    goto :goto_0

    .line 813
    :cond_3
    new-instance v2, Lorg/joda/time/b/k;

    aget-object v0, v3, v4

    check-cast v0, Lorg/joda/time/b/n;

    aget-object v1, v3, v5

    check-cast v1, Lorg/joda/time/b/m;

    invoke-direct {v2, v0, v1}, Lorg/joda/time/b/k;-><init>(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/b/l;
    .locals 9

    .prologue
    .line 730
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 731
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 734
    :cond_1
    invoke-direct {p0}, Lorg/joda/time/b/l;->u()V

    .line 737
    iget-object v1, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    .line 738
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 739
    if-eqz p5, :cond_2

    if-nez p4, :cond_2

    .line 740
    new-instance v0, Lorg/joda/time/b/l$g;

    sget-object v4, Lorg/joda/time/b/l$d;->a:Lorg/joda/time/b/l$d;

    sget-object v5, Lorg/joda/time/b/l$d;->a:Lorg/joda/time/b/l$d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/b/l$g;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/b/n;Lorg/joda/time/b/m;ZZ)V

    .line 743
    invoke-direct {p0, v0, v0}, Lorg/joda/time/b/l;->b(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)Lorg/joda/time/b/l;

    .line 774
    :cond_2
    :goto_0
    return-object p0

    .line 750
    :cond_3
    const/4 v0, 0x0

    .line 751
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    .line 752
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/joda/time/b/l$g;

    if-eqz v3, :cond_4

    .line 753
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/b/l$g;

    .line 754
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    .line 761
    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 762
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have two adjacent separators"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 764
    :cond_5
    invoke-static {v8}, Lorg/joda/time/b/l;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v1

    .line 765
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 766
    new-instance v0, Lorg/joda/time/b/l$g;

    const/4 v2, 0x0

    aget-object v4, v1, v2

    check-cast v4, Lorg/joda/time/b/n;

    const/4 v2, 0x1

    aget-object v5, v1, v2

    check-cast v5, Lorg/joda/time/b/m;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/b/l$g;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/b/n;Lorg/joda/time/b/m;ZZ)V

    .line 770
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object v8, v1

    goto :goto_2
.end method

.method private a(Lorg/joda/time/b/l$e;)Lorg/joda/time/b/l;
    .locals 2

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/joda/time/b/l;->u:Lorg/joda/time/b/l$e;

    if-eqz v0, :cond_1

    .line 382
    new-instance v0, Lorg/joda/time/b/l$b;

    iget-object v1, p0, Lorg/joda/time/b/l;->u:Lorg/joda/time/b/l$e;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/b/l$b;-><init>(Lorg/joda/time/b/l$e;Lorg/joda/time/b/l$e;)V

    move-object p1, v0

    .line 384
    :cond_1
    iput-object p1, p0, Lorg/joda/time/b/l;->u:Lorg/joda/time/b/l$e;

    .line 385
    return-object p0
.end method

.method private a(II)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 534
    new-instance v0, Lorg/joda/time/b/l$c;

    iget v2, p0, Lorg/joda/time/b/l;->r:I

    iget v3, p0, Lorg/joda/time/b/l;->s:I

    iget-boolean v4, p0, Lorg/joda/time/b/l;->t:Z

    iget-object v6, p0, Lorg/joda/time/b/l;->y:[Lorg/joda/time/b/l$c;

    iget-object v7, p0, Lorg/joda/time/b/l;->u:Lorg/joda/time/b/l$e;

    move v1, p2

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/b/l$c;-><init>(IIIZI[Lorg/joda/time/b/l$c;Lorg/joda/time/b/l$e;Lorg/joda/time/b/l$e;)V

    .line 536
    invoke-direct {p0, v0, v0}, Lorg/joda/time/b/l;->b(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)Lorg/joda/time/b/l;

    .line 537
    iget-object v1, p0, Lorg/joda/time/b/l;->y:[Lorg/joda/time/b/l$c;

    aput-object v0, v1, p1

    .line 538
    iput-object v8, p0, Lorg/joda/time/b/l;->u:Lorg/joda/time/b/l$e;

    .line 539
    return-void
.end method

.method private static a(Ljava/util/List;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 818
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 824
    new-instance v1, Lorg/joda/time/b/l$a;

    invoke-direct {v1, p0}, Lorg/joda/time/b/l$a;-><init>(Ljava/util/List;)V

    .line 825
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    .line 820
    :pswitch_0
    new-array v0, v4, [Ljava/lang/Object;

    sget-object v1, Lorg/joda/time/b/l$d;->a:Lorg/joda/time/b/l$d;

    aput-object v1, v0, v2

    sget-object v1, Lorg/joda/time/b/l$d;->a:Lorg/joda/time/b/l$d;

    aput-object v1, v0, v3

    goto :goto_0

    .line 822
    :pswitch_1
    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 818
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lorg/joda/time/b/l$e;)Lorg/joda/time/b/l;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 591
    iget-object v1, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 592
    iget-object v0, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    iget-object v1, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 593
    iget-object v0, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    iget-object v2, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 599
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-ne v0, v1, :cond_0

    instance-of v1, v0, Lorg/joda/time/b/l$c;

    if-nez v1, :cond_2

    .line 602
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No field to apply suffix to"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, v0

    .line 596
    goto :goto_0

    .line 605
    :cond_2
    invoke-direct {p0}, Lorg/joda/time/b/l;->u()V

    .line 606
    new-instance v1, Lorg/joda/time/b/l$c;

    check-cast v0, Lorg/joda/time/b/l$c;

    invoke-direct {v1, v0, p1}, Lorg/joda/time/b/l$c;-><init>(Lorg/joda/time/b/l$c;Lorg/joda/time/b/l$e;)V

    .line 607
    iget-object v0, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    iget-object v2, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v0, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    iget-object v2, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v0, p0, Lorg/joda/time/b/l;->y:[Lorg/joda/time/b/l$c;

    invoke-virtual {v1}, Lorg/joda/time/b/l$c;->a()I

    move-result v2

    aput-object v1, v0, v2

    .line 611
    return-object p0
.end method

.method private b(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)Lorg/joda/time/b/l;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 786
    iget-object v0, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v0, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    iget-boolean v3, p0, Lorg/joda/time/b/l;->w:Z

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lorg/joda/time/b/l;->w:Z

    .line 789
    iget-boolean v0, p0, Lorg/joda/time/b/l;->x:Z

    if-nez p2, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/joda/time/b/l;->x:Z

    .line 790
    return-object p0

    :cond_0
    move v0, v2

    .line 788
    goto :goto_0

    :cond_1
    move v1, v2

    .line 789
    goto :goto_1
.end method

.method private c(I)V
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lorg/joda/time/b/l;->q:I

    invoke-direct {p0, p1, v0}, Lorg/joda/time/b/l;->a(II)V

    .line 531
    return-void
.end method

.method private u()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lorg/joda/time/b/l;->u:Lorg/joda/time/b/l$e;

    if-eqz v0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prefix not followed by field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/b/l;->u:Lorg/joda/time/b/l$e;

    .line 783
    return-void
.end method


# virtual methods
.method public a()Lorg/joda/time/b/k;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    iget-boolean v1, p0, Lorg/joda/time/b/l;->w:Z

    iget-boolean v2, p0, Lorg/joda/time/b/l;->x:Z

    invoke-static {v0, v1, v2}, Lorg/joda/time/b/l;->a(Ljava/util/List;ZZ)Lorg/joda/time/b/k;

    move-result-object v1

    .line 124
    iget-object v0, p0, Lorg/joda/time/b/l;->y:[Lorg/joda/time/b/l$c;

    invoke-virtual {v0}, [Lorg/joda/time/b/l$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/b/l$c;

    check-cast v0, [Lorg/joda/time/b/l$c;

    iput-object v0, p0, Lorg/joda/time/b/l;->y:[Lorg/joda/time/b/l$c;

    .line 125
    return-object v1
.end method

.method public a(I)Lorg/joda/time/b/l;
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lorg/joda/time/b/l;->q:I

    .line 246
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lorg/joda/time/b/l;
    .locals 2

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Literal must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    invoke-direct {p0}, Lorg/joda/time/b/l;->u()V

    .line 232
    new-instance v0, Lorg/joda/time/b/l$d;

    invoke-direct {v0, p1}, Lorg/joda/time/b/l$d;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, v0, v0}, Lorg/joda/time/b/l;->b(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)Lorg/joda/time/b/l;

    .line 234
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 363
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 366
    :cond_1
    new-instance v0, Lorg/joda/time/b/l$f;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/b/l$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->a(Lorg/joda/time/b/l$e;)Lorg/joda/time/b/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/b/l;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 724
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/b/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/b/k;)Lorg/joda/time/b/l;
    .locals 2

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No formatter supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    invoke-direct {p0}, Lorg/joda/time/b/l;->u()V

    .line 196
    invoke-virtual {p1}, Lorg/joda/time/b/k;->b()Lorg/joda/time/b/n;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/b/k;->d()Lorg/joda/time/b/m;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/b/l;->b(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)Lorg/joda/time/b/l;

    .line 197
    return-object p0
.end method

.method public a(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)Lorg/joda/time/b/l;
    .locals 2

    .prologue
    .line 212
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No printer or parser supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    invoke-direct {p0}, Lorg/joda/time/b/l;->u()V

    .line 216
    invoke-direct {p0, p1, p2}, Lorg/joda/time/b/l;->b(Lorg/joda/time/b/n;Lorg/joda/time/b/m;)Lorg/joda/time/b/l;

    .line 217
    return-object p0
.end method

.method public a(Z)Lorg/joda/time/b/l;
    .locals 0

    .prologue
    .line 266
    iput-boolean p1, p0, Lorg/joda/time/b/l;->t:Z

    .line 267
    return-object p0
.end method

.method public b(I)Lorg/joda/time/b/l;
    .locals 0

    .prologue
    .line 256
    iput p1, p0, Lorg/joda/time/b/l;->s:I

    .line 257
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 346
    :cond_0
    new-instance v0, Lorg/joda/time/b/l$h;

    invoke-direct {v0, p1}, Lorg/joda/time/b/l$h;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->a(Lorg/joda/time/b/l$e;)Lorg/joda/time/b/l;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 573
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 576
    :cond_1
    new-instance v0, Lorg/joda/time/b/l$f;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/b/l$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->b(Lorg/joda/time/b/l$e;)Lorg/joda/time/b/l;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/joda/time/b/n;
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/joda/time/b/l;->w:Z

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/b/l;->a()Lorg/joda/time/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/b/k;->b()Lorg/joda/time/b/n;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 552
    if-nez p1, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 555
    :cond_0
    new-instance v0, Lorg/joda/time/b/l$h;

    invoke-direct {v0, p1}, Lorg/joda/time/b/l$h;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->b(Lorg/joda/time/b/l$e;)Lorg/joda/time/b/l;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 697
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/b/l;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/joda/time/b/m;
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lorg/joda/time/b/l;->x:Z

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/b/l;->a()Lorg/joda/time/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/b/k;->d()Lorg/joda/time/b/m;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lorg/joda/time/b/l;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 632
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/b/l;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lorg/joda/time/b/l;->q:I

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lorg/joda/time/b/l;->r:I

    .line 173
    iput v2, p0, Lorg/joda/time/b/l;->s:I

    .line 174
    iput-boolean v1, p0, Lorg/joda/time/b/l;->t:Z

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/b/l;->u:Lorg/joda/time/b/l$e;

    .line 176
    iget-object v0, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    .line 181
    :goto_0
    iput-boolean v1, p0, Lorg/joda/time/b/l;->w:Z

    .line 182
    iput-boolean v1, p0, Lorg/joda/time/b/l;->x:Z

    .line 183
    new-array v0, v2, [Lorg/joda/time/b/l$c;

    iput-object v0, p0, Lorg/joda/time/b/l;->y:[Lorg/joda/time/b/l$c;

    .line 184
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/joda/time/b/l;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public e()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x2

    iput v0, p0, Lorg/joda/time/b/l;->r:I

    .line 281
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lorg/joda/time/b/l;
    .locals 6

    .prologue
    .line 652
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/b/l;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    iput v0, p0, Lorg/joda/time/b/l;->r:I

    .line 293
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lorg/joda/time/b/l;
    .locals 6

    .prologue
    .line 672
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/b/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/b/l;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x3

    iput v0, p0, Lorg/joda/time/b/l;->r:I

    .line 304
    return-object p0
.end method

.method public h()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x4

    iput v0, p0, Lorg/joda/time/b/l;->r:I

    .line 316
    return-object p0
.end method

.method public i()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x5

    iput v0, p0, Lorg/joda/time/b/l;->r:I

    .line 330
    return-object p0
.end method

.method public j()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->c(I)V

    .line 399
    return-object p0
.end method

.method public k()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->c(I)V

    .line 412
    return-object p0
.end method

.method public l()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->c(I)V

    .line 425
    return-object p0
.end method

.method public m()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->c(I)V

    .line 438
    return-object p0
.end method

.method public n()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->c(I)V

    .line 451
    return-object p0
.end method

.method public o()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->c(I)V

    .line 464
    return-object p0
.end method

.method public p()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->c(I)V

    .line 477
    return-object p0
.end method

.method public q()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 488
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->c(I)V

    .line 489
    return-object p0
.end method

.method public r()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 500
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->c(I)V

    .line 501
    return-object p0
.end method

.method public s()Lorg/joda/time/b/l;
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/joda/time/b/l;->c(I)V

    .line 514
    return-object p0
.end method

.method public t()Lorg/joda/time/b/l;
    .locals 2

    .prologue
    .line 525
    const/4 v0, 0x7

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/joda/time/b/l;->a(II)V

    .line 526
    return-object p0
.end method
