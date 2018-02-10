.class public Lorg/joda/time/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/joda/time/b/f;

.field private final b:Lorg/joda/time/b/d;

.field private final c:Ljava/util/Locale;

.field private final d:Z

.field private final e:Lorg/joda/time/a;

.field private final f:Lorg/joda/time/DateTimeZone;

.field private final g:Ljava/lang/Integer;

.field private final h:I


# direct methods
.method public constructor <init>(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/joda/time/b/b;->a:Lorg/joda/time/b/f;

    .line 111
    iput-object p2, p0, Lorg/joda/time/b/b;->b:Lorg/joda/time/b/d;

    .line 112
    iput-object v1, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/joda/time/b/b;->d:Z

    .line 114
    iput-object v1, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    .line 115
    iput-object v1, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    .line 116
    iput-object v1, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    .line 117
    const/16 v0, 0x7d0

    iput v0, p0, Lorg/joda/time/b/b;->h:I

    .line 118
    return-void
.end method

.method private constructor <init>(Lorg/joda/time/b/f;Lorg/joda/time/b/d;Ljava/util/Locale;ZLorg/joda/time/a;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/joda/time/b/b;->a:Lorg/joda/time/b/f;

    .line 130
    iput-object p2, p0, Lorg/joda/time/b/b;->b:Lorg/joda/time/b/d;

    .line 131
    iput-object p3, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    .line 132
    iput-boolean p4, p0, Lorg/joda/time/b/b;->d:Z

    .line 133
    iput-object p5, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    .line 134
    iput-object p6, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    .line 135
    iput-object p7, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    .line 136
    iput p8, p0, Lorg/joda/time/b/b;->h:I

    .line 137
    return-void
.end method

.method private a(Ljava/io/Writer;JLorg/joda/time/a;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    invoke-direct {p0}, Lorg/joda/time/b/b;->n()Lorg/joda/time/b/f;

    move-result-object v2

    .line 637
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lorg/joda/time/b/b;->b(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v3

    .line 640
    invoke-virtual {v3}, Lorg/joda/time/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v8

    .line 641
    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v7

    .line 642
    int-to-long v4, v7

    add-long v4, v4, p2

    .line 643
    xor-long v10, p2, v4

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-gez v6, :cond_0

    int-to-long v10, v7

    xor-long v10, v10, p2

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-ltz v6, :cond_0

    .line 645
    sget-object v8, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 646
    const/4 v7, 0x0

    move-wide/from16 v4, p2

    .line 649
    :cond_0
    invoke-virtual {v3}, Lorg/joda/time/a;->withUTC()Lorg/joda/time/a;

    move-result-object v6

    iget-object v9, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lorg/joda/time/b/f;->printTo(Ljava/io/Writer;JLorg/joda/time/a;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 650
    return-void
.end method

.method private a(Ljava/lang/StringBuffer;JLorg/joda/time/a;)V
    .locals 14

    .prologue
    .line 619
    invoke-direct {p0}, Lorg/joda/time/b/b;->n()Lorg/joda/time/b/f;

    move-result-object v2

    .line 620
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lorg/joda/time/b/b;->b(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v3

    .line 623
    invoke-virtual {v3}, Lorg/joda/time/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v8

    .line 624
    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v7

    .line 625
    int-to-long v4, v7

    add-long v4, v4, p2

    .line 626
    xor-long v10, p2, v4

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-gez v6, :cond_0

    int-to-long v10, v7

    xor-long v10, v10, p2

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-ltz v6, :cond_0

    .line 628
    sget-object v8, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 629
    const/4 v7, 0x0

    move-wide/from16 v4, p2

    .line 632
    :cond_0
    invoke-virtual {v3}, Lorg/joda/time/a;->withUTC()Lorg/joda/time/a;

    move-result-object v6

    iget-object v9, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lorg/joda/time/b/f;->printTo(Ljava/lang/StringBuffer;JLorg/joda/time/a;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 633
    return-void
.end method

.method private b(Lorg/joda/time/a;)Lorg/joda/time/a;
    .locals 2

    .prologue
    .line 942
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    if-eqz v1, :cond_0

    .line 944
    iget-object v0, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    .line 946
    :cond_0
    iget-object v1, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v0

    .line 949
    :cond_1
    return-object v0
.end method

.method private n()Lorg/joda/time/b/f;
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lorg/joda/time/b/b;->a:Lorg/joda/time/b/f;

    .line 659
    if-nez v0, :cond_0

    .line 660
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    return-object v0
.end method

.method private o()Lorg/joda/time/b/d;
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lorg/joda/time/b/b;->b:Lorg/joda/time/b/d;

    .line 928
    if-nez v0, :cond_0

    .line 929
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lorg/joda/time/g;Ljava/lang/String;I)I
    .locals 8

    .prologue
    .line 700
    invoke-direct {p0}, Lorg/joda/time/b/b;->o()Lorg/joda/time/b/d;

    move-result-object v0

    .line 701
    if-nez p1, :cond_0

    .line 702
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Instant must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/g;->getMillis()J

    move-result-wide v2

    .line 706
    invoke-interface {p1}, Lorg/joda/time/g;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    .line 707
    invoke-static {v1}, Lorg/joda/time/d;->a(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/a;->year()Lorg/joda/time/c;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v7

    .line 708
    invoke-virtual {v1}, Lorg/joda/time/a;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 709
    invoke-direct {p0, v1}, Lorg/joda/time/b/b;->b(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v4

    .line 711
    new-instance v1, Lorg/joda/time/b/e;

    iget-object v5, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    iget-object v6, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/b/e;-><init>(JLorg/joda/time/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 713
    invoke-interface {v0, v1, p2, p3}, Lorg/joda/time/b/d;->parseInto(Lorg/joda/time/b/e;Ljava/lang/String;I)I

    move-result v0

    .line 714
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lorg/joda/time/b/e;->a(ZLjava/lang/String;)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lorg/joda/time/g;->setMillis(J)V

    .line 715
    iget-boolean v2, p0, Lorg/joda/time/b/b;->d:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/joda/time/b/e;->e()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 716
    invoke-virtual {v1}, Lorg/joda/time/b/e;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 717
    invoke-static {v1}, Lorg/joda/time/DateTimeZone;->forOffsetMillis(I)Lorg/joda/time/DateTimeZone;

    move-result-object v1

    .line 718
    invoke-virtual {v4, v1}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v4

    .line 722
    :cond_1
    :goto_0
    invoke-interface {p1, v4}, Lorg/joda/time/g;->setChronology(Lorg/joda/time/a;)V

    .line 723
    iget-object v1, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    if-eqz v1, :cond_2

    .line 724
    iget-object v1, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    invoke-interface {p1, v1}, Lorg/joda/time/g;->setZone(Lorg/joda/time/DateTimeZone;)V

    .line 726
    :cond_2
    return v0

    .line 719
    :cond_3
    invoke-virtual {v1}, Lorg/joda/time/b/e;->c()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 720
    invoke-virtual {v1}, Lorg/joda/time/b/e;->c()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v4

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)J
    .locals 8

    .prologue
    .line 742
    invoke-direct {p0}, Lorg/joda/time/b/b;->o()Lorg/joda/time/b/d;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    invoke-direct {p0, v1}, Lorg/joda/time/b/b;->b(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v4

    .line 745
    new-instance v1, Lorg/joda/time/b/e;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    iget-object v6, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    iget v7, p0, Lorg/joda/time/b/b;->h:I

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/b/e;-><init>(JLorg/joda/time/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 746
    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lorg/joda/time/b/d;->parseInto(Lorg/joda/time/b/e;Ljava/lang/String;I)I

    move-result v0

    .line 747
    if-ltz v0, :cond_0

    .line 748
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 749
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lorg/joda/time/b/e;->a(ZLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 752
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 754
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lorg/joda/time/b/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 598
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/joda/time/b/b;->n()Lorg/joda/time/b/f;

    move-result-object v1

    invoke-interface {v1}, Lorg/joda/time/b/f;->estimatePrintedLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 599
    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b/b;->a(Ljava/lang/StringBuffer;J)V

    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/l;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/joda/time/b/b;->n()Lorg/joda/time/b/f;

    move-result-object v1

    invoke-interface {v1}, Lorg/joda/time/b/f;->estimatePrintedLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 584
    invoke-virtual {p0, v0, p1}, Lorg/joda/time/b/b;->a(Ljava/lang/StringBuffer;Lorg/joda/time/l;)V

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/n;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 613
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/joda/time/b/b;->n()Lorg/joda/time/b/f;

    move-result-object v1

    invoke-interface {v1}, Lorg/joda/time/b/f;->estimatePrintedLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 614
    invoke-virtual {p0, v0, p1}, Lorg/joda/time/b/b;->a(Ljava/lang/StringBuffer;Lorg/joda/time/n;)V

    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lorg/joda/time/b/b;
    .locals 1

    .prologue
    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b/b;->a(Ljava/lang/Integer;)Lorg/joda/time/b/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)Lorg/joda/time/b/b;
    .locals 9

    .prologue
    .line 368
    iget-object v0, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 371
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/joda/time/b/b;

    iget-object v1, p0, Lorg/joda/time/b/b;->a:Lorg/joda/time/b/f;

    iget-object v2, p0, Lorg/joda/time/b/b;->b:Lorg/joda/time/b/d;

    iget-object v3, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    iget-boolean v4, p0, Lorg/joda/time/b/b;->d:Z

    iget-object v5, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    iget-object v6, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    iget v8, p0, Lorg/joda/time/b/b;->h:I

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/b/b;-><init>(Lorg/joda/time/b/f;Lorg/joda/time/b/d;Ljava/util/Locale;ZLorg/joda/time/a;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    goto :goto_0
.end method

.method public a(Ljava/util/Locale;)Lorg/joda/time/b/b;
    .locals 9

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/joda/time/b/b;->e()Ljava/util/Locale;

    move-result-object v0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/b/b;->e()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 192
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/joda/time/b/b;

    iget-object v1, p0, Lorg/joda/time/b/b;->a:Lorg/joda/time/b/f;

    iget-object v2, p0, Lorg/joda/time/b/b;->b:Lorg/joda/time/b/d;

    iget-boolean v4, p0, Lorg/joda/time/b/b;->d:Z

    iget-object v5, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    iget-object v6, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    iget-object v7, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    iget v8, p0, Lorg/joda/time/b/b;->h:I

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/b/b;-><init>(Lorg/joda/time/b/f;Lorg/joda/time/b/d;Ljava/util/Locale;ZLorg/joda/time/a;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    goto :goto_0
.end method

.method public a(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/b/b;
    .locals 9

    .prologue
    .line 321
    iget-object v0, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    if-ne v0, p1, :cond_0

    .line 324
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/b/b;

    iget-object v1, p0, Lorg/joda/time/b/b;->a:Lorg/joda/time/b/f;

    iget-object v2, p0, Lorg/joda/time/b/b;->b:Lorg/joda/time/b/d;

    iget-object v3, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    iget-object v7, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    iget v8, p0, Lorg/joda/time/b/b;->h:I

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/b/b;-><init>(Lorg/joda/time/b/f;Lorg/joda/time/b/d;Ljava/util/Locale;ZLorg/joda/time/a;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public a(Lorg/joda/time/a;)Lorg/joda/time/b/b;
    .locals 9

    .prologue
    .line 257
    iget-object v0, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    if-ne v0, p1, :cond_0

    .line 260
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/b/b;

    iget-object v1, p0, Lorg/joda/time/b/b;->a:Lorg/joda/time/b/f;

    iget-object v2, p0, Lorg/joda/time/b/b;->b:Lorg/joda/time/b/d;

    iget-object v3, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    iget-boolean v4, p0, Lorg/joda/time/b/b;->d:Z

    iget-object v6, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    iget-object v7, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    iget v8, p0, Lorg/joda/time/b/b;->h:I

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/b/b;-><init>(Lorg/joda/time/b/f;Lorg/joda/time/b/d;Ljava/util/Locale;ZLorg/joda/time/a;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public a(Ljava/io/Writer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/b/b;->a(Ljava/io/Writer;JLorg/joda/time/a;)V

    .line 509
    return-void
.end method

.method public a(Ljava/io/Writer;Lorg/joda/time/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {p2}, Lorg/joda/time/d;->a(Lorg/joda/time/l;)J

    move-result-wide v0

    .line 473
    invoke-static {p2}, Lorg/joda/time/d;->b(Lorg/joda/time/l;)Lorg/joda/time/a;

    move-result-object v2

    .line 474
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/joda/time/b/b;->a(Ljava/io/Writer;JLorg/joda/time/a;)V

    .line 475
    return-void
.end method

.method public a(Ljava/io/Writer;Lorg/joda/time/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-direct {p0}, Lorg/joda/time/b/b;->n()Lorg/joda/time/b/f;

    move-result-object v0

    .line 552
    if-nez p2, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The partial must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    iget-object v1, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    invoke-interface {v0, p1, p2, v1}, Lorg/joda/time/b/f;->printTo(Ljava/io/Writer;Lorg/joda/time/n;Ljava/util/Locale;)V

    .line 556
    return-void
.end method

.method public a(Ljava/lang/Appendable;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p0, p2, p3}, Lorg/joda/time/b/b;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 521
    return-void
.end method

.method public a(Ljava/lang/Appendable;Lorg/joda/time/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0, p2}, Lorg/joda/time/b/b;->a(Lorg/joda/time/l;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 486
    return-void
.end method

.method public a(Ljava/lang/Appendable;Lorg/joda/time/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-virtual {p0, p2}, Lorg/joda/time/b/b;->a(Lorg/joda/time/n;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 570
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;J)V
    .locals 2

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/b/b;->a(Ljava/lang/StringBuffer;JLorg/joda/time/a;)V

    .line 498
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Lorg/joda/time/l;)V
    .locals 3

    .prologue
    .line 460
    invoke-static {p2}, Lorg/joda/time/d;->a(Lorg/joda/time/l;)J

    move-result-wide v0

    .line 461
    invoke-static {p2}, Lorg/joda/time/d;->b(Lorg/joda/time/l;)Lorg/joda/time/a;

    move-result-object v2

    .line 462
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/joda/time/b/b;->a(Ljava/lang/StringBuffer;JLorg/joda/time/a;)V

    .line 463
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Lorg/joda/time/n;)V
    .locals 2

    .prologue
    .line 534
    invoke-direct {p0}, Lorg/joda/time/b/b;->n()Lorg/joda/time/b/f;

    move-result-object v0

    .line 535
    if-nez p2, :cond_0

    .line 536
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The partial must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    iget-object v1, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    invoke-interface {v0, p1, p2, v1}, Lorg/joda/time/b/f;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/n;Ljava/util/Locale;)V

    .line 539
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/joda/time/b/b;->a:Lorg/joda/time/b/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lorg/joda/time/LocalDate;
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0, p1}, Lorg/joda/time/b/b;->d(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lorg/joda/time/b/b;
    .locals 9

    .prologue
    .line 438
    new-instance v0, Lorg/joda/time/b/b;

    iget-object v1, p0, Lorg/joda/time/b/b;->a:Lorg/joda/time/b/f;

    iget-object v2, p0, Lorg/joda/time/b/b;->b:Lorg/joda/time/b/d;

    iget-object v3, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    iget-boolean v4, p0, Lorg/joda/time/b/b;->d:Z

    iget-object v5, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    iget-object v6, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    iget-object v7, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/b/b;-><init>(Lorg/joda/time/b/f;Lorg/joda/time/b/d;Ljava/util/Locale;ZLorg/joda/time/a;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    return-object v0
.end method

.method public b()Lorg/joda/time/b/f;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/joda/time/b/b;->a:Lorg/joda/time/b/f;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lorg/joda/time/LocalTime;
    .locals 1

    .prologue
    .line 790
    invoke-virtual {p0, p1}, Lorg/joda/time/b/b;->d(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/joda/time/b/b;->b:Lorg/joda/time/b/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;
    .locals 8

    .prologue
    .line 808
    invoke-direct {p0}, Lorg/joda/time/b/b;->o()Lorg/joda/time/b/d;

    move-result-object v0

    .line 810
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/joda/time/b/b;->b(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->withUTC()Lorg/joda/time/a;

    move-result-object v4

    .line 811
    new-instance v1, Lorg/joda/time/b/e;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    iget-object v6, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    iget v7, p0, Lorg/joda/time/b/b;->h:I

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/b/e;-><init>(JLorg/joda/time/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 812
    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lorg/joda/time/b/d;->parseInto(Lorg/joda/time/b/e;Ljava/lang/String;I)I

    move-result v0

    .line 813
    if-ltz v0, :cond_2

    .line 814
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 815
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lorg/joda/time/b/e;->a(ZLjava/lang/String;)J

    move-result-wide v2

    .line 816
    invoke-virtual {v1}, Lorg/joda/time/b/e;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 817
    invoke-virtual {v1}, Lorg/joda/time/b/e;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 818
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forOffsetMillis(I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 819
    invoke-virtual {v4, v0}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v4

    .line 823
    :cond_0
    :goto_0
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-direct {v0, v2, v3, v4}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/a;)V

    return-object v0

    .line 820
    :cond_1
    invoke-virtual {v1}, Lorg/joda/time/b/e;->c()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v1}, Lorg/joda/time/b/e;->c()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v4

    goto :goto_0

    .line 826
    :cond_2
    xor-int/lit8 v0, v0, -0x1

    .line 828
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lorg/joda/time/b/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d()Lorg/joda/time/b/d;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/joda/time/b/b;->b:Lorg/joda/time/b/d;

    return-object v0
.end method

.method public e()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 8

    .prologue
    .line 849
    invoke-direct {p0}, Lorg/joda/time/b/b;->o()Lorg/joda/time/b/d;

    move-result-object v0

    .line 851
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/joda/time/b/b;->b(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v4

    .line 852
    new-instance v1, Lorg/joda/time/b/e;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    iget-object v6, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    iget v7, p0, Lorg/joda/time/b/b;->h:I

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/b/e;-><init>(JLorg/joda/time/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 853
    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lorg/joda/time/b/d;->parseInto(Lorg/joda/time/b/e;Ljava/lang/String;I)I

    move-result v0

    .line 854
    if-ltz v0, :cond_3

    .line 855
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 856
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lorg/joda/time/b/e;->a(ZLjava/lang/String;)J

    move-result-wide v2

    .line 857
    iget-boolean v0, p0, Lorg/joda/time/b/b;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lorg/joda/time/b/e;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 858
    invoke-virtual {v1}, Lorg/joda/time/b/e;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 859
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forOffsetMillis(I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 860
    invoke-virtual {v4, v0}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v4

    .line 864
    :cond_0
    :goto_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, v2, v3, v4}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/a;)V

    .line 865
    iget-object v1, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    if-eqz v1, :cond_1

    .line 866
    iget-object v1, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 868
    :cond_1
    return-object v0

    .line 861
    :cond_2
    invoke-virtual {v1}, Lorg/joda/time/b/e;->c()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {v1}, Lorg/joda/time/b/e;->c()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v4

    goto :goto_0

    .line 871
    :cond_3
    xor-int/lit8 v0, v0, -0x1

    .line 873
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lorg/joda/time/b/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public f(Ljava/lang/String;)Lorg/joda/time/MutableDateTime;
    .locals 8

    .prologue
    .line 894
    invoke-direct {p0}, Lorg/joda/time/b/b;->o()Lorg/joda/time/b/d;

    move-result-object v0

    .line 896
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/joda/time/b/b;->b(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v4

    .line 897
    new-instance v1, Lorg/joda/time/b/e;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    iget-object v6, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    iget v7, p0, Lorg/joda/time/b/b;->h:I

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/b/e;-><init>(JLorg/joda/time/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 898
    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lorg/joda/time/b/d;->parseInto(Lorg/joda/time/b/e;Ljava/lang/String;I)I

    move-result v0

    .line 899
    if-ltz v0, :cond_3

    .line 900
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 901
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lorg/joda/time/b/e;->a(ZLjava/lang/String;)J

    move-result-wide v2

    .line 902
    iget-boolean v0, p0, Lorg/joda/time/b/b;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lorg/joda/time/b/e;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 903
    invoke-virtual {v1}, Lorg/joda/time/b/e;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 904
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forOffsetMillis(I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 905
    invoke-virtual {v4, v0}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v4

    .line 909
    :cond_0
    :goto_0
    new-instance v0, Lorg/joda/time/MutableDateTime;

    invoke-direct {v0, v2, v3, v4}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/a;)V

    .line 910
    iget-object v1, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    if-eqz v1, :cond_1

    .line 911
    iget-object v1, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1}, Lorg/joda/time/MutableDateTime;->setZone(Lorg/joda/time/DateTimeZone;)V

    .line 913
    :cond_1
    return-object v0

    .line 906
    :cond_2
    invoke-virtual {v1}, Lorg/joda/time/b/e;->c()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v1}, Lorg/joda/time/b/e;->c()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/joda/time/a;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/a;

    move-result-object v4

    goto :goto_0

    .line 916
    :cond_3
    xor-int/lit8 v0, v0, -0x1

    .line 918
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lorg/joda/time/b/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public f()Lorg/joda/time/b/b;
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 222
    iget-boolean v0, p0, Lorg/joda/time/b/b;->d:Z

    if-ne v0, v4, :cond_0

    .line 225
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/b/b;

    iget-object v1, p0, Lorg/joda/time/b/b;->a:Lorg/joda/time/b/f;

    iget-object v2, p0, Lorg/joda/time/b/b;->b:Lorg/joda/time/b/d;

    iget-object v3, p0, Lorg/joda/time/b/b;->c:Ljava/util/Locale;

    iget-object v5, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    iget v8, p0, Lorg/joda/time/b/b;->h:I

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/b/b;-><init>(Lorg/joda/time/b/f;Lorg/joda/time/b/d;Ljava/util/Locale;ZLorg/joda/time/a;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/joda/time/b/b;->d:Z

    return v0
.end method

.method public h()Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    return-object v0
.end method

.method public i()Lorg/joda/time/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/joda/time/b/b;->e:Lorg/joda/time/a;

    return-object v0
.end method

.method public j()Lorg/joda/time/b/b;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0, v0}, Lorg/joda/time/b/b;->a(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/b/b;

    move-result-object v0

    return-object v0
.end method

.method public k()Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/joda/time/b/b;->f:Lorg/joda/time/DateTimeZone;

    return-object v0
.end method

.method public l()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/joda/time/b/b;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lorg/joda/time/b/b;->h:I

    return v0
.end method
