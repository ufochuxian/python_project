.class final Lorg/joda/time/tz/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field final a:Lorg/joda/time/tz/a$b;

.field final b:Ljava/lang/String;

.field final c:I


# direct methods
.method constructor <init>(Lorg/joda/time/tz/a$b;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object p1, p0, Lorg/joda/time/tz/a$d;->a:Lorg/joda/time/tz/a$b;

    .line 749
    iput-object p2, p0, Lorg/joda/time/tz/a$d;->b:Ljava/lang/String;

    .line 750
    iput p3, p0, Lorg/joda/time/tz/a$d;->c:I

    .line 751
    return-void
.end method

.method static a(Ljava/io/DataInput;)Lorg/joda/time/tz/a$d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    new-instance v0, Lorg/joda/time/tz/a$d;

    invoke-static {p0}, Lorg/joda/time/tz/a$b;->a(Ljava/io/DataInput;)Lorg/joda/time/tz/a$b;

    move-result-object v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lorg/joda/time/tz/a;->a(Ljava/io/DataInput;)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/tz/a$d;-><init>(Lorg/joda/time/tz/a$b;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public a(JII)J
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lorg/joda/time/tz/a$d;->a:Lorg/joda/time/tz/a$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/tz/a$b;->a(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Lorg/joda/time/tz/a$b;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lorg/joda/time/tz/a$d;->a:Lorg/joda/time/tz/a$b;

    return-object v0
.end method

.method a(Ljava/lang/String;)Lorg/joda/time/tz/a$d;
    .locals 3

    .prologue
    .line 800
    new-instance v0, Lorg/joda/time/tz/a$d;

    iget-object v1, p0, Lorg/joda/time/tz/a$d;->a:Lorg/joda/time/tz/a$b;

    iget v2, p0, Lorg/joda/time/tz/a$d;->c:I

    invoke-direct {v0, v1, p1, v2}, Lorg/joda/time/tz/a$d;-><init>(Lorg/joda/time/tz/a$b;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lorg/joda/time/tz/a$d;->a:Lorg/joda/time/tz/a$b;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/a$b;->a(Ljava/io/DataOutput;)V

    .line 795
    iget-object v0, p0, Lorg/joda/time/tz/a$d;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 796
    iget v0, p0, Lorg/joda/time/tz/a$d;->c:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/joda/time/tz/a;->a(Ljava/io/DataOutput;J)V

    .line 797
    return-void
.end method

.method public b(JII)J
    .locals 3

    .prologue
    .line 768
    iget-object v0, p0, Lorg/joda/time/tz/a$d;->a:Lorg/joda/time/tz/a$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/tz/a$b;->b(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lorg/joda/time/tz/a$d;->b:Ljava/lang/String;

    return-object v0
.end method

.method b(Ljava/lang/String;)Lorg/joda/time/tz/a$d;
    .locals 2

    .prologue
    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/joda/time/tz/a$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/tz/a$d;->a(Ljava/lang/String;)Lorg/joda/time/tz/a$d;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lorg/joda/time/tz/a$d;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 780
    if-ne p0, p1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v0

    .line 783
    :cond_1
    instance-of v2, p1, Lorg/joda/time/tz/a$d;

    if-eqz v2, :cond_3

    .line 784
    check-cast p1, Lorg/joda/time/tz/a$d;

    .line 785
    iget v2, p0, Lorg/joda/time/tz/a$d;->c:I

    iget v3, p1, Lorg/joda/time/tz/a$d;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/joda/time/tz/a$d;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/joda/time/tz/a$d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/joda/time/tz/a$d;->a:Lorg/joda/time/tz/a$b;

    iget-object v3, p1, Lorg/joda/time/tz/a$d;->a:Lorg/joda/time/tz/a$b;

    invoke-virtual {v2, v3}, Lorg/joda/time/tz/a$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 790
    goto :goto_0
.end method
