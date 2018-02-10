.class public Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumMetaPart;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$Forumsct;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumContent;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumResPart;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$SingleForum;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$SingleForum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$SingleForum;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$SingleForum;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$SingleForum;

    return-void
.end method
