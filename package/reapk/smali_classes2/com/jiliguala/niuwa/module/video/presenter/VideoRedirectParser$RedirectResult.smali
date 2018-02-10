.class public Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedirectResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;
    }
.end annotation


# instance fields
.field public rspCode:I

.field public rspType:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;

.field public uri:Ljava/lang/String;

.field public uriOri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;Ljava/lang/String;I)V
    .locals 0
    .param p1, "rspType"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "rspCode"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->rspType:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult$RspType;

    .line 162
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->uri:Ljava/lang/String;

    .line 163
    iput p3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->rspCode:I

    .line 164
    return-void
.end method
