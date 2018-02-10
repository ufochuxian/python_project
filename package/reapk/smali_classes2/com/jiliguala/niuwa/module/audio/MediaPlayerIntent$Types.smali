.class public Lcom/jiliguala/niuwa/module/audio/MediaPlayerIntent$Types;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/MediaPlayerIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Types"
.end annotation


# static fields
.field public static final PLAY_BACK_COMPLETE:I = 0x1

.field public static final PLAY_BACK_ERROR:I = 0x0

.field public static final PLAY_BACK_PREPARED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/jiliguala/niuwa/module/audio/MediaPlayerIntent;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/audio/MediaPlayerIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/MediaPlayerIntent;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerIntent$Types;->this$0:Lcom/jiliguala/niuwa/module/audio/MediaPlayerIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
