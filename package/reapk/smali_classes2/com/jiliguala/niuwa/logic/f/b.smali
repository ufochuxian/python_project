.class public abstract Lcom/jiliguala/niuwa/logic/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/jiliguala/niuwa/logic/f/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/f/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 20
    .local v0, "nativeLibPath":Ljava/lang/String;
    return-object v0
.end method

.method private b()Ljava/io/File;
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/f/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "natvieLibPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private d()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "nativeLibMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/io/File;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/f/b;->b()Ljava/io/File;

    move-result-object v2

    .line 37
    .local v2, "primaryNativeLib":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 42
    .local v3, "soFiles":[Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "primaryLibDirName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 61
    .end local v1    # "primaryLibDirName":Ljava/lang/String;
    .end local v3    # "soFiles":[Ljava/io/File;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected c()Z
    .locals 12

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/f/b;->b()Ljava/io/File;

    move-result-object v1

    .line 70
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "nativeLibDirName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/f/b;->d()Ljava/util/HashMap;

    move-result-object v6

    .line 73
    .local v6, "nativeLibMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/io/File;>;"
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 74
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/io/File;

    .line 75
    .local v10, "soFiles":[Ljava/io/File;
    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/logic/f/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "expectedSos":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v11, v0

    if-ge v3, v11, :cond_3

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "find":Z
    aget-object v9, v0, v3

    .line 79
    .local v9, "soFileNameExpected":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v11, v10

    if-ge v4, v11, :cond_0

    .line 80
    aget-object v7, v10, v4

    .line 81
    .local v7, "soFile":Ljava/io/File;
    if-eqz v7, :cond_1

    .line 82
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "soFileName":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 85
    const/4 v2, 0x1

    .line 90
    .end local v7    # "soFile":Ljava/io/File;
    .end local v8    # "soFileName":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_2

    .line 91
    const/4 v11, 0x0

    .line 96
    .end local v0    # "expectedSos":[Ljava/lang/String;
    .end local v2    # "find":Z
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "nativeLibDirName":Ljava/lang/String;
    .end local v6    # "nativeLibMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/io/File;>;"
    .end local v9    # "soFileNameExpected":Ljava/lang/String;
    .end local v10    # "soFiles":[Ljava/io/File;
    :goto_2
    return v11

    .line 79
    .restart local v0    # "expectedSos":[Ljava/lang/String;
    .restart local v2    # "find":Z
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "nativeLibDirName":Ljava/lang/String;
    .restart local v6    # "nativeLibMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/io/File;>;"
    .restart local v7    # "soFile":Ljava/io/File;
    .restart local v9    # "soFileNameExpected":Ljava/lang/String;
    .restart local v10    # "soFiles":[Ljava/io/File;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 76
    .end local v7    # "soFile":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "expectedSos":[Ljava/lang/String;
    .end local v2    # "find":Z
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "nativeLibDirName":Ljava/lang/String;
    .end local v6    # "nativeLibMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/io/File;>;"
    .end local v9    # "soFileNameExpected":Ljava/lang/String;
    .end local v10    # "soFiles":[Ljava/io/File;
    :cond_3
    const/4 v11, 0x1

    goto :goto_2
.end method
