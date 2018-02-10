.class public Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumSctPart;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumContentPart;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
