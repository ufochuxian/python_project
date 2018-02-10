.class public Lcom/jiliguala/niuwa/module/story/helpers/PublishingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sShowPublished:Z

.field public static sShowUnpublished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/helpers/PublishingHelper;->sShowPublished:Z

    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/helpers/PublishingHelper;->sShowUnpublished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
