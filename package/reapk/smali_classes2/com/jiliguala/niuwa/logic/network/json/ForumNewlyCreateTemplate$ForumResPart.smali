.class public Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumResPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumResPart"
.end annotation


# instance fields
.field public ava:Ljava/lang/String;

.field public content:Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumContent;

.field public cts:Ljava/lang/String;

.field public flr:I

.field public nick:Ljava/lang/String;

.field public ref:Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$SingleForum;

.field public rply:I

.field public rts:Ljava/lang/String;

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumContent;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumContent;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumResPart;->content:Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumContent;

    return-void
.end method
