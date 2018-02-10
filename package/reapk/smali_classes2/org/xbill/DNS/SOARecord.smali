.class public Lorg/xbill/DNS/SOARecord;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0xe916d0ebd70fa7bL


# instance fields
.field private admin:Lorg/xbill/DNS/Name;

.field private expire:J

.field private host:Lorg/xbill/DNS/Name;

.field private minimum:J

.field private refresh:J

.field private retry:J

.field private serial:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V
    .locals 9
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "host"    # Lorg/xbill/DNS/Name;
    .param p6, "admin"    # Lorg/xbill/DNS/Name;
    .param p7, "serial"    # J
    .param p9, "refresh"    # J
    .param p11, "retry"    # J
    .param p13, "expire"    # J
    .param p15, "minimum"    # J

    .prologue
    .line 43
    const/4 v4, 0x6

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 44
    const-string v2, "host"

    invoke-static {v2, p5}, Lorg/xbill/DNS/SOARecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    .line 45
    const-string v2, "admin"

    invoke-static {v2, p6}, Lorg/xbill/DNS/SOARecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    .line 46
    const-string v2, "serial"

    move-wide/from16 v0, p7

    invoke-static {v2, v0, v1}, Lorg/xbill/DNS/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    .line 47
    const-string v2, "refresh"

    move-wide/from16 v0, p9

    invoke-static {v2, v0, v1}, Lorg/xbill/DNS/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    .line 48
    const-string v2, "retry"

    move-wide/from16 v0, p11

    invoke-static {v2, v0, v1}, Lorg/xbill/DNS/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    .line 49
    const-string v2, "expire"

    move-wide/from16 v0, p13

    invoke-static {v2, v0, v1}, Lorg/xbill/DNS/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    .line 50
    const-string v2, "minimum"

    move-wide/from16 v0, p15

    invoke-static {v2, v0, v1}, Lorg/xbill/DNS/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    .line 51
    return-void
.end method


# virtual methods
.method public getAdmin()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getExpire()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    return-wide v0
.end method

.method public getHost()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getMinimum()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    return-wide v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/xbill/DNS/SOARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SOARecord;-><init>()V

    return-object v0
.end method

.method public getRefresh()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    return-wide v0
.end method

.method public getRetry()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    return-wide v0
.end method

.method public getSerial()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    return-wide v0
.end method

.method rdataFromString(Lorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)V
    .locals 2
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    .line 67
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    .line 68
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    .line 69
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    .line 70
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    .line 71
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    .line 73
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/h;)V
    .locals 2
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/h;)V

    iput-object v0, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    .line 56
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/h;)V

    iput-object v0, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    .line 57
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    .line 58
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    .line 59
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    .line 60
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    .line 61
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    .line 62
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget-object v1, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 82
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string v1, " (\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, "\t; serial\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 87
    const-string v1, "\t; refresh\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 89
    const-string v1, "\t; retry\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, "\t; expire\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, " )\t; minimum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 101
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V
    .locals 2
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "c"    # Lorg/xbill/DNS/e;
    .param p3, "canonical"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V

    .line 154
    iget-object v0, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V

    .line 155
    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 156
    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 157
    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 158
    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 159
    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 160
    return-void
.end method
