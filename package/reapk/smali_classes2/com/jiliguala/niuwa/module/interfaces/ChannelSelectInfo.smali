.class public Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public chnCanExpand:Z

.field public chnId:Ljava/lang/String;

.field public chnLevel:I

.field public clickIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p1, "chnId"    # Ljava/lang/String;
    .param p2, "clickIndex"    # I
    .param p3, "chnLevel"    # I
    .param p4, "chnCanExpand"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->chnId:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->clickIndex:I

    .line 16
    iput p3, p0, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->chnLevel:I

    .line 17
    iput-boolean p4, p0, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;->chnCanExpand:Z

    .line 18
    return-void
.end method
