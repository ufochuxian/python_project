.class Lorg/xbill/DNS/b$b;
.super Lorg/xbill/DNS/RRset;
.source "SourceFile"

# interfaces
.implements Lorg/xbill/DNS/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x52dfefb855793de0L


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/RRset;IJ)V
    .locals 3
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p2, "cred"    # I
    .param p3, "maxttl"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/RRset;)V

    .line 55
    iput p2, p0, Lorg/xbill/DNS/b$b;->a:I

    .line 56
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v0

    invoke-static {v0, v1, p3, p4}, Lorg/xbill/DNS/b;->a(JJ)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/b$b;->b:I

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Record;IJ)V
    .locals 3
    .param p1, "rec"    # Lorg/xbill/DNS/Record;
    .param p2, "cred"    # I
    .param p3, "maxttl"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 47
    iput p2, p0, Lorg/xbill/DNS/b$b;->a:I

    .line 48
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v0

    invoke-static {v0, v1, p3, p4}, Lorg/xbill/DNS/b;->a(JJ)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/b$b;->b:I

    .line 49
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/b$b;->addRR(Lorg/xbill/DNS/Record;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final compareCredibility(I)I
    .locals 1
    .param p1, "cred"    # I

    .prologue
    .line 67
    iget v0, p0, Lorg/xbill/DNS/b$b;->a:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final expired()Z
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 62
    .local v0, "now":I
    iget v1, p0, Lorg/xbill/DNS/b$b;->b:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-super {p0}, Lorg/xbill/DNS/RRset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, " cl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    iget v1, p0, Lorg/xbill/DNS/b$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
