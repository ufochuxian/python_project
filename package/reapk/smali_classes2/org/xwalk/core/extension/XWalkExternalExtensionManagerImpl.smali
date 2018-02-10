.class public Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;
.super Lorg/xwalk/core/XWalkExternalExtensionManager;
.source "SourceFile"

# interfaces
.implements Lorg/xwalk/core/extension/XWalkExtensionContextClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkExternalExtensionManagerImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExtensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadExternalExtensions:Z

.field private final mNativeExtensionLoader:Lorg/xwalk/core/XWalkNativeExtensionLoader;

.field private final mXWalkView:Lorg/xwalk/core/XWalkView;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/XWalkView;)V
    .locals 3
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1}, Lorg/xwalk/core/XWalkExternalExtensionManager;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    .line 56
    iput-object p1, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mXWalkView:Lorg/xwalk/core/XWalkView;

    .line 58
    invoke-virtual {p0}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->getBridge()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    const-string v0, "XWalkExternalExtensionManagerImpl"

    const-string v1, "Cannot load external extensions due to old version of runtime library"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object v2, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mContext:Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mLoadExternalExtensions:Z

    .line 62
    iput-object v2, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mNativeExtensionLoader:Lorg/xwalk/core/XWalkNativeExtensionLoader;

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->getViewContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mContext:Landroid/content/Context;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mLoadExternalExtensions:Z

    .line 68
    new-instance v0, Lorg/xwalk/core/XWalkNativeExtensionLoader;

    invoke-direct {v0}, Lorg/xwalk/core/XWalkNativeExtensionLoader;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mNativeExtensionLoader:Lorg/xwalk/core/XWalkNativeExtensionLoader;

    .line 70
    invoke-direct {p0}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->loadNativeExtensions()V

    goto :goto_0
.end method

.method private createExternalExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/extension/XWalkExtensionContextClient;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "jsApi"    # Ljava/lang/String;
    .param p4, "extensionContext"    # Lorg/xwalk/core/extension/XWalkExtensionContextClient;

    .prologue
    .line 274
    invoke-interface {p4}, Lorg/xwalk/core/extension/XWalkExtensionContextClient;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 276
    .local v2, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 277
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lorg/xwalk/core/extension/XWalkExtensionContextClient;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 279
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p0, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 291
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v3

    .line 281
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v3}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 282
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 283
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v3}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 284
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 285
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-static {v3}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 286
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v3

    .line 287
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v3}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 288
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    .line 289
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v3}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getFileContent(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fromRaw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const-string v7, ""

    .line 239
    .local v7, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 241
    .local v3, "inputStream":Ljava/io/InputStream;
    if-eqz p3, :cond_0

    .line 244
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 245
    .local v6, "resource":Landroid/content/res/Resources;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v5, v9, v10

    .line 246
    .local v5, "resName":Ljava/lang/String;
    const-string v9, "raw"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v5, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 247
    .local v4, "resId":I
    if-lez v4, :cond_0

    .line 249
    :try_start_1
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 256
    .end local v4    # "resId":I
    .end local v5    # "resName":Ljava/lang/String;
    .end local v6    # "resource":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 257
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 258
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 260
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 261
    .local v8, "size":I
    new-array v1, v8, [B

    .line 262
    .local v1, "buffer":[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 263
    new-instance v7, Ljava/lang/String;

    .end local v7    # "result":Ljava/lang/String;
    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    .restart local v7    # "result":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 266
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 269
    :cond_2
    return-object v7

    .line 250
    .end local v1    # "buffer":[B
    .end local v8    # "size":I
    .restart local v4    # "resId":I
    .restart local v5    # "resName":Ljava/lang/String;
    .restart local v6    # "resource":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    const-string v9, "XWalkExternalExtensionManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inputstream failed to open for R.raw."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", try to find it in assets"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 265
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "resId":I
    .end local v5    # "resName":Ljava/lang/String;
    .end local v6    # "resource":Landroid/content/res/Resources;
    .end local v7    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_3

    .line 266
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v9
.end method

.method private static handleException(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 312
    const-string v0, "XWalkExternalExtensionManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in calling methods of external extensions. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    return-void
.end method

.method private loadNativeExtensions()V
    .locals 5

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 300
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 302
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mNativeExtensionLoader:Lorg/xwalk/core/XWalkNativeExtensionLoader;

    invoke-virtual {v2, v1}, Lorg/xwalk/core/XWalkNativeExtensionLoader;->registerNativeExtensionsInPath(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void

    .line 303
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public broadcastMessage(Lorg/xwalk/core/extension/XWalkExternalExtension;Ljava/lang/String;)V
    .locals 3
    .param p1, "extension"    # Lorg/xwalk/core/extension/XWalkExternalExtension;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v1, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getExtensionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;

    .line 186
    .local v0, "bridge":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;->broadcastMessage(Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public loadExtension(Ljava/lang/String;)V
    .locals 13
    .param p1, "extensionPath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 124
    iget-boolean v10, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mLoadExternalExtensions:Z

    if-nez v10, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 128
    .local v8, "len":I
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sget-char v11, Ljava/io/File;->separatorChar:C

    if-ne v10, v11, :cond_2

    .line 129
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {p1, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 131
    :cond_2
    sget-char v10, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "folderName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "jsonFile":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v5, v11}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->getFileContent(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 142
    .local v6, "jsonFileContent":Ljava/lang/String;
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "name"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, "name":Ljava/lang/String;
    const-string v10, "class"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "className":Ljava/lang/String;
    const-string v10, "jsapi"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "jsApiFile":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    .line 149
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    :cond_3
    const/4 v3, 0x0

    .line 153
    .local v3, "jsApi":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    .line 155
    :try_start_2
    iget-object v10, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v4, v11}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->getFileContent(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 162
    :cond_4
    if-eqz v9, :cond_0

    if-eqz v0, :cond_0

    .line 163
    :try_start_3
    const-string v10, "XWalkExternalExtensionManagerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createExternalExtension: name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " className: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, v9, v0, v3, p0}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->createExternalExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/extension/XWalkExtensionContextClient;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 166
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "jsApi":Ljava/lang/String;
    .end local v4    # "jsApiFile":Ljava/lang/String;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Lorg/json/JSONException;
    const-string v10, "XWalkExternalExtensionManagerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse json file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 136
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v6    # "jsonFileContent":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "XWalkExternalExtensionManagerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read json file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 156
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v3    # "jsApi":Ljava/lang/String;
    .restart local v4    # "jsApiFile":Ljava/lang/String;
    .restart local v6    # "jsonFileContent":Ljava/lang/String;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "name":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 157
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v10, "XWalkExternalExtensionManagerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read the file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 219
    iget-object v2, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;

    .line 220
    .local v0, "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    invoke-interface {v0}, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;->onDestroy()V

    goto :goto_0

    .line 222
    .end local v0    # "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 223
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 227
    iget-object v2, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;

    .line 228
    .local v0, "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    invoke-interface {v0, p1}, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    .end local v0    # "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 205
    iget-object v2, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;

    .line 206
    .local v0, "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    invoke-interface {v0}, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;->onPause()V

    goto :goto_0

    .line 208
    .end local v0    # "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 198
    iget-object v2, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;

    .line 199
    .local v0, "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    invoke-interface {v0}, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;->onResume()V

    goto :goto_0

    .line 201
    .end local v0    # "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 191
    iget-object v2, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;

    .line 192
    .local v0, "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    invoke-interface {v0}, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;->onStart()V

    goto :goto_0

    .line 194
    .end local v0    # "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 212
    iget-object v2, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;

    .line 213
    .local v0, "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    invoke-interface {v0}, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;->onStop()V

    goto :goto_0

    .line 215
    .end local v0    # "extension":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    :cond_0
    return-void
.end method

.method public postBinaryMessage(Lorg/xwalk/core/extension/XWalkExternalExtension;I[B)V
    .locals 3
    .param p1, "extension"    # Lorg/xwalk/core/extension/XWalkExternalExtension;
    .param p2, "instanceID"    # I
    .param p3, "message"    # [B

    .prologue
    .line 179
    iget-object v1, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getExtensionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;

    .line 180
    .local v0, "bridge":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;->postBinaryMessage(I[B)V

    .line 181
    :cond_0
    return-void
.end method

.method public postMessage(Lorg/xwalk/core/extension/XWalkExternalExtension;ILjava/lang/String;)V
    .locals 3
    .param p1, "extension"    # Lorg/xwalk/core/extension/XWalkExternalExtension;
    .param p2, "instanceID"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v1, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getExtensionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;

    .line 174
    .local v0, "bridge":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;->postMessage(ILjava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method public registerExtension(Lorg/xwalk/core/extension/XWalkExternalExtension;)V
    .locals 4
    .param p1, "extension"    # Lorg/xwalk/core/extension/XWalkExternalExtension;

    .prologue
    .line 76
    iget-object v1, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getExtensionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "XWalkExternalExtensionManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getExtensionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is already registered!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {p1}, Lorg/xwalk/core/extension/XWalkExternalExtensionBridgeFactory;->createInstance(Lorg/xwalk/core/extension/XWalkExternalExtension;)Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;

    move-result-object v0

    .line 82
    .local v0, "bridge":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    iget-object v1, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getExtensionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAllowExternalExtensions(Z)V
    .locals 0
    .param p1, "load"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mLoadExternalExtensions:Z

    .line 234
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 112
    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string v1, "This method is no longer supported"

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterExtension(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v1, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;

    .line 88
    .local v0, "bridge":Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-interface {v0}, Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;->onDestroy()V

    .line 92
    :cond_0
    return-void
.end method
