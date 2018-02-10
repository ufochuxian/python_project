.class Lorg/xbill/DNS/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xbill/DNS/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:Lorg/xbill/DNS/Name;

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IJ)V
    .locals 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "soa"    # Lorg/xbill/DNS/SOARecord;
    .param p4, "cred"    # I
    .param p5, "maxttl"    # J

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/xbill/DNS/b$d;->b:Lorg/xbill/DNS/Name;

    .line 91
    iput p2, p0, Lorg/xbill/DNS/b$d;->a:I

    .line 92
    const-wide/16 v0, 0x0

    .line 93
    .local v0, "cttl":J
    if-eqz p3, :cond_0

    .line 94
    invoke-virtual {p3}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v0

    .line 95
    :cond_0
    iput p4, p0, Lorg/xbill/DNS/b$d;->c:I

    .line 96
    invoke-static {v0, v1, p5, p6}, Lorg/xbill/DNS/b;->a(JJ)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/b$d;->d:I

    .line 97
    return-void
.end method


# virtual methods
.method public final compareCredibility(I)I
    .locals 1
    .param p1, "cred"    # I

    .prologue
    .line 112
    iget v0, p0, Lorg/xbill/DNS/b$d;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final expired()Z
    .locals 6

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 107
    .local v0, "now":I
    iget v1, p0, Lorg/xbill/DNS/b$d;->d:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/xbill/DNS/b$d;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/b$d;->a:I

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "NXDOMAIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/b$d;->b:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    :goto_0
    const-string v1, " cl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget v1, p0, Lorg/xbill/DNS/b$d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "NXRRSET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/b$d;->b:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/xbill/DNS/b$d;->a:I

    invoke-static {v2}, Lorg/xbill/DNS/au;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
