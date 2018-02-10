.class public Lorg/xwalk/core/XWalkFileChooser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALL_AUDIO_TYPES:Ljava/lang/String; = "audio/*"

.field private static final ALL_IMAGE_TYPES:Ljava/lang/String; = "image/*"

.field private static final ALL_VIDEO_TYPES:Ljava/lang/String; = "video/*"

.field private static final ANY_TYPES:Ljava/lang/String; = "*/*"

.field private static final AUDIO_TYPE:Ljava/lang/String; = "audio/"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/"

.field public static final INPUT_FILE_REQUEST_CODE:I = 0x1

.field private static final PATH_PREFIX:Ljava/lang/String; = "file:"

.field private static final SPLIT_EXPRESSION:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "XWalkFileChooser"

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video/"

.field private static final WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCameraPhotoPath:Ljava/lang/String;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/xwalk/core/XWalkFileChooser;->mActivity:Landroid/app/Activity;

    .line 109
    return-void
.end method

.method private canWriteExternalStorage()Z
    .locals 5

    .prologue
    .line 246
    :try_start_0
    iget-object v3, p0, Lorg/xwalk/core/XWalkFileChooser;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 247
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lorg/xwalk/core/XWalkFileChooser;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 249
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 251
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private createImageFile()Ljava/io/File;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 258
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "state":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 260
    const-string v7, "XWalkFileChooser"

    const-string v8, "External storage is not mounted."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 281
    :goto_0
    return-object v1

    .line 265
    :cond_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMdd_HHmmss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "timeStamp":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JPEG_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "imageFileName":Ljava/lang/String;
    sget-object v7, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 269
    .local v4, "storageDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 270
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 274
    :cond_1
    :try_start_0
    const-string v7, ".jpg"

    invoke-static {v2, v7, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 275
    .local v1, "file":Ljava/io/File;
    const-string v7, "XWalkFileChooser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Created image file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "XWalkFileChooser"

    const-string v8, "Unable to create Image File, please make sure permission \'WRITE_EXTERNAL_STORAGE\' was added."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 281
    goto :goto_0
.end method

.method private deleteImageFile()Z
    .locals 5

    .prologue
    .line 286
    iget-object v2, p0, Lorg/xwalk/core/XWalkFileChooser;->mCameraPhotoPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/xwalk/core/XWalkFileChooser;->mCameraPhotoPath:Ljava/lang/String;

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    :cond_0
    const/4 v1, 0x0

    .line 292
    :goto_0
    return v1

    .line 289
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/XWalkFileChooser;->mCameraPhotoPath:Ljava/lang/String;

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 290
    .local v0, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 291
    .local v1, "result":Z
    const-string v2, "XWalkFileChooser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete image file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 213
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lorg/xwalk/core/XWalkFileChooser;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_3

    .line 214
    const-string v2, "XWalkFileChooser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x0

    .line 218
    .local v1, "results":Landroid/net/Uri;
    const/4 v2, -0x1

    if-ne v2, p2, :cond_6

    .line 220
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_4

    .line 222
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/XWalkFileChooser;->mCameraPhotoPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lorg/xwalk/core/XWalkFileChooser;->mCameraPhotoPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 236
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 237
    const-string v2, "XWalkFileChooser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_2
    iget-object v2, p0, Lorg/xwalk/core/XWalkFileChooser;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 240
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xwalk/core/XWalkFileChooser;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 242
    .end local v1    # "results":Landroid/net/Uri;
    :cond_3
    return-void

    .line 226
    .restart local v1    # "results":Landroid/net/Uri;
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 228
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 230
    :cond_5
    invoke-direct {p0}, Lorg/xwalk/core/XWalkFileChooser;->deleteImageFile()Z

    goto :goto_0

    .line 232
    .end local v0    # "dataString":Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_1

    .line 233
    invoke-direct {p0}, Lorg/xwalk/core/XWalkFileChooser;->deleteImageFile()Z

    goto :goto_0
.end method

.method public showFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v9, 0x1

    .line 125
    iput-object p1, p0, Lorg/xwalk/core/XWalkFileChooser;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 127
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v6, "takePictureIntent":Landroid/content/Intent;
    iget-object v7, p0, Lorg/xwalk/core/XWalkFileChooser;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 130
    invoke-direct {p0}, Lorg/xwalk/core/XWalkFileChooser;->createImageFile()Ljava/io/File;

    move-result-object v4

    .line 132
    .local v4, "photoFile":Ljava/io/File;
    if-eqz v4, :cond_1

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/xwalk/core/XWalkFileChooser;->mCameraPhotoPath:Ljava/lang/String;

    .line 134
    const-string v7, "PhotoPath"

    iget-object v8, p0, Lorg/xwalk/core/XWalkFileChooser;->mCameraPhotoPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v7, "output"

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    .end local v4    # "photoFile":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "camcorder":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v5, "soundRecorder":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "contentSelectionIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v3, "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const-string v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "*/*"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 149
    const-string v7, "true"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 150
    const-string v7, "image/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 151
    if-eqz v6, :cond_6

    .line 152
    iget-object v7, p0, Lorg/xwalk/core/XWalkFileChooser;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v6, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    const-string v7, "XWalkFileChooser"

    const-string v8, "Started taking picture"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_1
    return v9

    .line 137
    .end local v0    # "camcorder":Landroid/content/Intent;
    .end local v2    # "contentSelectionIntent":Landroid/content/Intent;
    .end local v3    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v5    # "soundRecorder":Landroid/content/Intent;
    .restart local v4    # "photoFile":Ljava/io/File;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 156
    .end local v4    # "photoFile":Ljava/io/File;
    .restart local v0    # "camcorder":Landroid/content/Intent;
    .restart local v2    # "contentSelectionIntent":Landroid/content/Intent;
    .restart local v3    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v5    # "soundRecorder":Landroid/content/Intent;
    :cond_2
    const-string v7, "video/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 157
    iget-object v7, p0, Lorg/xwalk/core/XWalkFileChooser;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v0, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    const-string v7, "XWalkFileChooser"

    const-string v8, "Started camcorder"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    :cond_3
    const-string v7, "audio/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 161
    iget-object v7, p0, Lorg/xwalk/core/XWalkFileChooser;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v5, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 162
    const-string v7, "XWalkFileChooser"

    const-string v8, "Started sound recorder"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :cond_4
    const-string v7, "image/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 167
    if-eqz v6, :cond_5

    .line 168
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_5
    const-string v7, "image/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct {p0}, Lorg/xwalk/core/XWalkFileChooser;->canWriteExternalStorage()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 183
    if-eqz v6, :cond_7

    .line 184
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_7
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v7, "*/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.CHOOSER"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "chooserIntent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 194
    const-string v8, "android.intent.extra.INITIAL_INTENTS"

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/content/Intent;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/Parcelable;

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    :cond_9
    iget-object v7, p0, Lorg/xwalk/core/XWalkFileChooser;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v1, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 198
    const-string v7, "XWalkFileChooser"

    const-string v8, "Started chooser"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 171
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    :cond_a
    const-string v7, "video/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 172
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v7, "video/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 174
    :cond_b
    const-string v7, "audio/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 175
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v7, "audio/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method
