.class Lorg/joda/time/chrono/GJChronology$a;
.super Lorg/joda/time/field/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/GJChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static final h:J = 0x30f7c12a10b2ff62L


# instance fields
.field final a:Lorg/joda/time/c;

.field final b:Lorg/joda/time/c;

.field final c:J

.field final d:Z

.field protected e:Lorg/joda/time/e;

.field protected f:Lorg/joda/time/e;

.field final synthetic g:Lorg/joda/time/chrono/GJChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/c;Lorg/joda/time/c;J)V
    .locals 8

    .prologue
    .line 626
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/chrono/GJChronology$a;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/c;Lorg/joda/time/c;JZ)V

    .line 627
    return-void
.end method

.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/c;Lorg/joda/time/c;JZ)V
    .locals 2

    .prologue
    .line 636
    iput-object p1, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    .line 637
    invoke-virtual {p3}, Lorg/joda/time/c;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/b;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 638
    iput-object p2, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    .line 639
    iput-object p3, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    .line 640
    iput-wide p4, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    .line 641
    iput-boolean p6, p0, Lorg/joda/time/chrono/GJChronology$a;->d:Z

    .line 644
    invoke-virtual {p3}, Lorg/joda/time/c;->getDurationField()Lorg/joda/time/e;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->e:Lorg/joda/time/e;

    .line 646
    invoke-virtual {p3}, Lorg/joda/time/c;->getRangeDurationField()Lorg/joda/time/e;

    move-result-object v0

    .line 647
    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p2}, Lorg/joda/time/c;->getRangeDurationField()Lorg/joda/time/e;

    move-result-object v0

    .line 650
    :cond_0
    iput-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->f:Lorg/joda/time/e;

    .line 651
    return-void
.end method


# virtual methods
.method protected a(J)J
    .locals 3

    .prologue
    .line 918
    iget-boolean v0, p0, Lorg/joda/time/chrono/GJChronology$a;->d:Z

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->julianToGregorianByWeekyear(J)J

    move-result-wide v0

    .line 921
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->julianToGregorianByYear(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public add(JI)J
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(Lorg/joda/time/n;I[II)[I
    .locals 6

    .prologue
    .line 700
    if-nez p4, :cond_0

    .line 711
    :goto_0
    return-object p3

    .line 703
    :cond_0
    invoke-static {p1}, Lorg/joda/time/d;->a(Lorg/joda/time/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    const-wide/16 v2, 0x0

    .line 705
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/joda/time/n;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 706
    invoke-interface {p1, v0}, Lorg/joda/time/n;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    iget-object v5, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v4, v5}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v4

    aget v5, p3, v0

    invoke-virtual {v4, v2, v3, v5}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v2

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 708
    :cond_1
    invoke-virtual {p0, v2, v3, p4}, Lorg/joda/time/chrono/GJChronology$a;->add(JI)J

    move-result-wide v0

    .line 709
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v2, p1, v0, v1}, Lorg/joda/time/chrono/GJChronology;->get(Lorg/joda/time/n;J)[I

    move-result-object p3

    goto :goto_0

    .line 711
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/joda/time/field/b;->add(Lorg/joda/time/n;I[II)[I

    move-result-object p3

    goto :goto_0
.end method

.method protected b(J)J
    .locals 3

    .prologue
    .line 926
    iget-boolean v0, p0, Lorg/joda/time/chrono/GJChronology$a;->d:Z

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->gregorianToJulianByWeekyear(J)J

    move-result-wide v0

    .line 929
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->gregorianToJulianByYear(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public get(J)I
    .locals 3

    .prologue
    .line 658
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 659
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->get(J)I

    move-result v0

    .line 661
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->get(J)I

    move-result v0

    goto :goto_0
.end method

.method public getAsShortText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getAsShortText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 678
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 679
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 681
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getAsText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 666
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 667
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 669
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDifference(JJ)I
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->e:Lorg/joda/time/e;

    return-object v0
.end method

.method public getLeapAmount(J)I
    .locals 3

    .prologue
    .line 794
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 795
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getLeapAmount(J)I

    move-result v0

    .line 797
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getLeapAmount(J)I

    move-result v0

    goto :goto_0
.end method

.method public getLeapDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getLeapDurationField()Lorg/joda/time/e;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 913
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v1, p1}, Lorg/joda/time/c;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v1, p1}, Lorg/joda/time/c;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 7

    .prologue
    .line 844
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 845
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMaximumValue(J)I

    move-result v0

    .line 857
    :cond_0
    :goto_0
    return v0

    .line 848
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMaximumValue(J)I

    move-result v0

    .line 852
    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v2

    .line 853
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 854
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    goto :goto_0
.end method

.method public getMaximumValue(Lorg/joda/time/n;)I
    .locals 4

    .prologue
    .line 861
    invoke-static {}, Lorg/joda/time/chrono/GJChronology;->getInstanceUTC()Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lorg/joda/time/chrono/GJChronology;->set(Lorg/joda/time/n;J)J

    move-result-wide v0

    .line 862
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$a;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/n;[I)I
    .locals 9

    .prologue
    .line 866
    invoke-static {}, Lorg/joda/time/chrono/GJChronology;->getInstanceUTC()Lorg/joda/time/chrono/GJChronology;

    move-result-object v4

    .line 867
    const-wide/16 v2, 0x0

    .line 868
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/joda/time/n;->size()I

    move-result v5

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    if-ge v2, v5, :cond_1

    .line 869
    invoke-interface {p1, v2}, Lorg/joda/time/n;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v3

    .line 870
    aget v6, p2, v2

    invoke-virtual {v3, v0, v1}, Lorg/joda/time/c;->getMaximumValue(J)I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 871
    aget v6, p2, v2

    invoke-virtual {v3, v0, v1, v6}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    .line 868
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 874
    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$a;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue(J)I
    .locals 7

    .prologue
    .line 821
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 822
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMinimumValue(J)I

    move-result v0

    .line 834
    :cond_0
    :goto_0
    return v0

    .line 825
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMinimumValue(J)I

    move-result v0

    .line 829
    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v2

    .line 830
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 831
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumValue(Lorg/joda/time/n;)I
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->getMinimumValue(Lorg/joda/time/n;)I

    move-result v0

    return v0
.end method

.method public getMinimumValue(Lorg/joda/time/n;[I)I
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMinimumValue(Lorg/joda/time/n;[I)I

    move-result v0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/e;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->f:Lorg/joda/time/e;

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 3

    .prologue
    .line 786
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 787
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->isLeap(J)Z

    move-result v0

    .line 789
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->isLeap(J)Z

    move-result v0

    goto :goto_0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method public roundCeiling(J)J
    .locals 7

    .prologue
    .line 893
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 894
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundCeiling(J)J

    move-result-wide v0

    .line 904
    :cond_0
    :goto_0
    return-wide v0

    .line 896
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundCeiling(J)J

    move-result-wide v0

    .line 897
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 899
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 900
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$a;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public roundFloor(J)J
    .locals 7

    .prologue
    .line 878
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 879
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v0

    .line 880
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 882
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 883
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$a;->b(J)J

    move-result-wide v0

    .line 889
    :cond_0
    :goto_0
    return-wide v0

    .line 887
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public set(JI)J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 724
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 725
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    .line 726
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 728
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 729
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$a;->b(J)J

    move-result-wide v0

    .line 732
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$a;->get(J)I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 733
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v1}, Lorg/joda/time/c;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v6}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 738
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v0

    .line 739
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 741
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 742
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$a;->a(J)J

    move-result-wide v0

    .line 745
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$a;->get(J)I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 746
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v1}, Lorg/joda/time/c;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v6}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 751
    :cond_3
    return-wide v0
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 7

    .prologue
    .line 755
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 756
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 757
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 759
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 760
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$a;->b(J)J

    move-result-wide v0

    .line 774
    :cond_0
    :goto_0
    return-wide v0

    .line 765
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$a;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 766
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 768
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$a;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$a;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 769
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$a;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method
