.class final Lorg/joda/time/tz/a$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(JLjava/lang/String;II)V
    .locals 1

    .prologue
    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    iput-wide p1, p0, Lorg/joda/time/tz/a$g;->a:J

    .line 902
    iput-object p3, p0, Lorg/joda/time/tz/a$g;->b:Ljava/lang/String;

    .line 903
    iput p4, p0, Lorg/joda/time/tz/a$g;->c:I

    .line 904
    iput p5, p0, Lorg/joda/time/tz/a$g;->d:I

    .line 905
    return-void
.end method

.method constructor <init>(JLorg/joda/time/tz/a$e;I)V
    .locals 1

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-wide p1, p0, Lorg/joda/time/tz/a$g;->a:J

    .line 894
    invoke-virtual {p3}, Lorg/joda/time/tz/a$e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/a$g;->b:Ljava/lang/String;

    .line 895
    invoke-virtual {p3}, Lorg/joda/time/tz/a$e;->e()I

    move-result v0

    add-int/2addr v0, p4

    iput v0, p0, Lorg/joda/time/tz/a$g;->c:I

    .line 896
    iput p4, p0, Lorg/joda/time/tz/a$g;->d:I

    .line 897
    return-void
.end method

.method constructor <init>(JLorg/joda/time/tz/a$g;)V
    .locals 1

    .prologue
    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    iput-wide p1, p0, Lorg/joda/time/tz/a$g;->a:J

    .line 887
    iget-object v0, p3, Lorg/joda/time/tz/a$g;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/tz/a$g;->b:Ljava/lang/String;

    .line 888
    iget v0, p3, Lorg/joda/time/tz/a$g;->c:I

    iput v0, p0, Lorg/joda/time/tz/a$g;->c:I

    .line 889
    iget v0, p3, Lorg/joda/time/tz/a$g;->d:I

    iput v0, p0, Lorg/joda/time/tz/a$g;->d:I

    .line 890
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 908
    iget-wide v0, p0, Lorg/joda/time/tz/a$g;->a:J

    return-wide v0
.end method

.method public a(Lorg/joda/time/tz/a$g;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 931
    if-nez p1, :cond_1

    .line 934
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lorg/joda/time/tz/a$g;->a:J

    iget-wide v4, p1, Lorg/joda/time/tz/a$g;->a:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget v1, p0, Lorg/joda/time/tz/a$g;->c:I

    iget v2, p1, Lorg/joda/time/tz/a$g;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/joda/time/tz/a$g;->b:Ljava/lang/String;

    iget-object v2, p1, Lorg/joda/time/tz/a$g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lorg/joda/time/tz/a$g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Lorg/joda/time/tz/a$g;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lorg/joda/time/tz/a$g;->d:I

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 924
    iget v0, p0, Lorg/joda/time/tz/a$g;->c:I

    iget v1, p0, Lorg/joda/time/tz/a$g;->d:I

    sub-int/2addr v0, v1

    return v0
.end method
