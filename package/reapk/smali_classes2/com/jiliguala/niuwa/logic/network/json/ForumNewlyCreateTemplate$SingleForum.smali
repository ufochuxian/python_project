.class public Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$SingleForum;
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
    name = "SingleForum"
.end annotation


# instance fields
.field public _id:Ljava/lang/String;

.field public meta:Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumMetaPart;

.field public res:Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumResPart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
