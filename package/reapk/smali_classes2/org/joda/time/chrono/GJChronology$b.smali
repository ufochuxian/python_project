.class final Lorg/joda/time/chrono/GJChronology$b;
.super Lorg/joda/time/chrono/GJChronology$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/GJChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field private static final i:J = 0x2f53a32d270c62f9L


# instance fields
.field final synthetic h:Lorg/joda/time/chrono/GJChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/c;Lorg/joda/time/c;J)V
    .locals 10

    .prologue
    .line 949
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, Lorg/joda/time/chrono/GJChronology$b;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/e;JZ)V

    .line 950
    return-void
.end method

.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/e;J)V
    .locals 9

    .prologue
    .line 960
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lorg/joda/time/chrono/GJChronology$b;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/e;JZ)V

    .line 961
    return-void
.end method

.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/e;JZ)V
    .locals 7

    .prologue
    .line 971
    iput-object p1, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p5

    move v6, p7

    .line 972
    invoke-direct/range {v0 .. v6}, Lorg/joda/time/chrono/GJChronology$a;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/c;Lorg/joda/time/c;JZ)V

    .line 973
    if-nez p4, :cond_0

    .line 974
    new-instance p4, Lorg/joda/time/chrono/GJChronology$c;

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->e:Lorg/joda/time/e;

    invoke-direct {p4, v0, p0}, Lorg/joda/time/chrono/GJChronology$c;-><init>(Lorg/joda/time/e;Lorg/joda/time/chrono/GJChronology$b;)V

    .line 976
    :cond_0
    iput-object p4, p0, Lorg/joda/time/chrono/GJChronology$b;->e:Lorg/joda/time/e;

    .line 977
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 980
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 981
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    .line 982
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 984
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 985
    iget-boolean v2, p0, Lorg/joda/time/chrono/GJChronology$b;->d:Z

    if-eqz v2, :cond_2

    .line 986
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$100(Lorg/joda/time/chrono/GJChronology;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/chrono/GregorianChronology;->weekyear()Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->get(J)I

    move-result v2

    .line 987
    if-gtz v2, :cond_0

    .line 988
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$100(Lorg/joda/time/chrono/GJChronology;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/chrono/GregorianChronology;->weekyear()Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    .line 996
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$b;->b(J)J

    move-result-wide v0

    .line 1009
    :cond_1
    :goto_1
    return-wide v0

    .line 991
    :cond_2
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$100(Lorg/joda/time/chrono/GJChronology;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/chrono/GregorianChronology;->year()Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->get(J)I

    move-result v2

    .line 992
    if-gtz v2, :cond_0

    .line 993
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$100(Lorg/joda/time/chrono/GJChronology;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/chrono/GregorianChronology;->year()Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    goto :goto_0

    .line 1000
    :cond_3
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    .line 1001
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 1003
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 1005
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$b;->a(J)J

    move-result-wide v0

    goto :goto_1
.end method

.method public add(JJ)J
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1013
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 1014
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->add(JJ)J

    move-result-wide v0

    .line 1015
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1017
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1018
    iget-boolean v2, p0, Lorg/joda/time/chrono/GJChronology$b;->d:Z

    if-eqz v2, :cond_2

    .line 1019
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$100(Lorg/joda/time/chrono/GJChronology;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/chrono/GregorianChronology;->weekyear()Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->get(J)I

    move-result v2

    .line 1020
    if-gtz v2, :cond_0

    .line 1021
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$100(Lorg/joda/time/chrono/GJChronology;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/chrono/GregorianChronology;->weekyear()Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    .line 1029
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$b;->b(J)J

    move-result-wide v0

    .line 1042
    :cond_1
    :goto_1
    return-wide v0

    .line 1024
    :cond_2
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$100(Lorg/joda/time/chrono/GJChronology;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/chrono/GregorianChronology;->year()Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->get(J)I

    move-result v2

    .line 1025
    if-gtz v2, :cond_0

    .line 1026
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$100(Lorg/joda/time/chrono/GJChronology;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/chrono/GregorianChronology;->year()Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v0

    goto :goto_0

    .line 1033
    :cond_3
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->add(JJ)J

    move-result-wide v0

    .line 1034
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 1036
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->h:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 1038
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$b;->a(J)J

    move-result-wide v0

    goto :goto_1
.end method

.method public getDifference(JJ)I
    .locals 3

    .prologue
    .line 1046
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 1047
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifference(JJ)I

    move-result v0

    .line 1061
    :goto_0
    return v0

    .line 1052
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$b;->b(J)J

    move-result-wide v0

    .line 1053
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/c;->getDifference(JJ)I

    move-result v0

    goto :goto_0

    .line 1055
    :cond_1
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_2

    .line 1056
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifference(JJ)I

    move-result v0

    goto :goto_0

    .line 1060
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$b;->a(J)J

    move-result-wide v0

    .line 1061
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->b:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/c;->getDifference(JJ)I

    move-result v0

    goto :goto_0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 1066
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 1067
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    .line 1081
    :goto_0
    return-wide v0

    .line 1072
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$b;->b(J)J

    move-result-wide v0

    .line 1073
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->a:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/c;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 1075
    :cond_1
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_2

    .line 1076
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 1080
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$b;->a(J)J

    move-result-wide v0

    .line 1081
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$b;->b:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/c;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMaximumValue(J)I
    .locals 3

    .prologue
    .line 1104
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMaximumValue(J)I

    move-result v0

    .line 1107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMaximumValue(J)I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumValue(J)I
    .locals 3

    .prologue
    .line 1096
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$b;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMinimumValue(J)I

    move-result v0

    .line 1099
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$b;->a:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->getMinimumValue(J)I

    move-result v0

    goto :goto_0
.end method
