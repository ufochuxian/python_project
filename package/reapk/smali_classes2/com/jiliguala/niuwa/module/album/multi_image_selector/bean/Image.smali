.class public Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->name:Ljava/lang/String;

    .line 11
    iput-wide p3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->time:J

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 17
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    move-object v2, v0

    .line 18
    .local v2, "other":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    iget-object v4, v2, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 22
    .end local v2    # "other":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    :goto_0
    return v3

    .line 19
    :catch_0
    move-exception v1

    .line 20
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 22
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method
