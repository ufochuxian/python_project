.class public Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cover:Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

.field public images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 14
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;

    move-object v2, v0

    .line 15
    .local v2, "other":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->path:Ljava/lang/String;

    iget-object v4, v2, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 19
    .end local v2    # "other":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;
    :goto_0
    return v3

    .line 16
    :catch_0
    move-exception v1

    .line 17
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 19
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method
