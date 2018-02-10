.class public Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumRefPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumRefPart"
.end annotation


# instance fields
.field public _id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumRefPart;->_id:Ljava/lang/String;

    .line 59
    return-void
.end method
