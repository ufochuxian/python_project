.class public Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate$TYPE_SETS;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5ac3f9748694595L


# instance fields
.field public bid:Ljava/lang/String;

.field public dur:J

.field public rid:Ljava/lang/String;

.field public typ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "rid"    # Ljava/lang/String;
    .param p3, "typ"    # Ljava/lang/String;
    .param p4, "dur"    # J

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;->bid:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;->rid:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;->typ:Ljava/lang/String;

    .line 17
    iput-wide p4, p0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;->dur:J

    .line 18
    return-void
.end method

.method public static generator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;
    .locals 7
    .param p0, "bid"    # Ljava/lang/String;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "typ"    # Ljava/lang/String;
    .param p3, "dur"    # J

    .prologue
    .line 21
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 22
    .local v0, "template":Lcom/jiliguala/niuwa/logic/network/json/ProgressTrackMetaDataTemplate;
    return-object v0
.end method
