.class public abstract Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected appFragment:Landroid/app/Fragment;

.field protected extras:Landroid/os/Bundle;

.field protected filePathOriginal:Ljava/lang/String;

.field protected foldername:Ljava/lang/String;

.field protected fragment:Landroid/support/v4/app/Fragment;

.field protected shouldCreateThumbnails:Z

.field protected type:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # I
    .param p3, "foldername"    # Ljava/lang/String;
    .param p4, "shouldCreateThumbnails"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->activity:Landroid/app/Activity;

    .line 38
    iput p2, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->type:I

    .line 39
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->foldername:Ljava/lang/String;

    .line 40
    iput-boolean p4, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->shouldCreateThumbnails:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "type"    # I
    .param p3, "foldername"    # Ljava/lang/String;
    .param p4, "shouldCreateThumbnails"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->appFragment:Landroid/app/Fragment;

    .line 52
    iput p2, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->type:I

    .line 53
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->foldername:Ljava/lang/String;

    .line 54
    iput-boolean p4, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->shouldCreateThumbnails:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "type"    # I
    .param p3, "foldername"    # Ljava/lang/String;
    .param p4, "shouldCreateThumbnails"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->fragment:Landroid/support/v4/app/Fragment;

    .line 45
    iput p2, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->type:I

    .line 46
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->foldername:Ljava/lang/String;

    .line 47
    iput-boolean p4, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->shouldCreateThumbnails:Z

    .line 48
    return-void
.end method


# virtual methods
.method public abstract choose()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->appFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->appFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryProbableFileSize(Landroid/net/Uri;Landroid/content/Context;)J
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v8, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 158
    .end local v8    # "file":Ljava/io/File;
    :goto_0
    return-wide v10

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 151
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 153
    .local v10, "length":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "length":J
    :catch_0
    move-exception v7

    .line 158
    .local v7, "e":Ljava/lang/Exception;
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 156
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method public reinitialize(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->filePathOriginal:Ljava/lang/String;

    .line 93
    return-void
.end method

.method protected sanitizeURI(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->filePathOriginal:Ljava/lang/String;

    .line 100
    const-string v0, "https?://\\w+\\.googleusercontent\\.com/.+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->filePathOriginal:Ljava/lang/String;

    .line 104
    :cond_0
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->filePathOriginal:Ljava/lang/String;

    .line 107
    :cond_1
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->extras:Landroid/os/Bundle;

    .line 142
    return-void
.end method

.method protected startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->type:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->fragment:Landroid/support/v4/app/Fragment;

    iget v1, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->type:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->appFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->appFragment:Landroid/app/Fragment;

    iget v1, p0, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->type:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public abstract submit(ILandroid/content/Intent;)V
.end method

.method protected wasVideoSelected(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 128
    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, "cR":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 134
    goto :goto_0
.end method
