.class public Lorg/xbill/DNS/MGRecord;
.super Lorg/xbill/DNS/ao;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x373bff6faf8c97a6L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/ao;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V
    .locals 9
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "mailbox"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 29
    const/16 v2, 0x8

    const-string v7, "mailbox"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/ao;-><init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getMailbox()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/xbill/DNS/MGRecord;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/xbill/DNS/MGRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/MGRecord;-><init>()V

    return-object v0
.end method
