.class Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingSpawnData"
.end annotation


# instance fields
.field private final mCallbackType:I

.field private final mChildProcessId:I

.field private final mClientContext:J

.field private final mCommandLine:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCreationParams:Lorg/chromium/content/browser/ChildProcessCreationParams;

.field private final mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

.field private final mInSandbox:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessCreationParams;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "commandLine"    # [Ljava/lang/String;
    .param p3, "childProcessId"    # I
    .param p4, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p5, "clientContext"    # J
    .param p7, "callbackType"    # I
    .param p8, "inSandbox"    # Z
    .param p9, "creationParams"    # Lorg/chromium/content/browser/ChildProcessCreationParams;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mCommandLine:[Ljava/lang/String;

    .line 163
    iput p3, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mChildProcessId:I

    .line 164
    iput-object p4, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 165
    iput-wide p5, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mClientContext:J

    .line 166
    iput p7, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mCallbackType:I

    .line 167
    iput-boolean p8, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mInSandbox:Z

    .line 168
    iput-object p9, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mCreationParams:Lorg/chromium/content/browser/ChildProcessCreationParams;

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessCreationParams;Lorg/chromium/content/browser/ChildProcessLauncher$1;)V
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p5, "x4"    # J
    .param p7, "x5"    # I
    .param p8, "x6"    # Z
    .param p9, "x7"    # Lorg/chromium/content/browser/ChildProcessCreationParams;
    .param p10, "x8"    # Lorg/chromium/content/browser/ChildProcessLauncher$1;

    .prologue
    .line 142
    invoke-direct/range {p0 .. p9}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;-><init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessCreationParams;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)Lorg/chromium/content/browser/ChildProcessCreationParams;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->getCreationParams()Lorg/chromium/content/browser/ChildProcessCreationParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->context()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->commandLine()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->childProcessId()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)[Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->filesToBeMapped()[Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->clientContext()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->callbackType()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->inSandbox()Z

    move-result v0

    return v0
.end method

.method private callbackType()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mCallbackType:I

    return v0
.end method

.method private childProcessId()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mChildProcessId:I

    return v0
.end method

.method private clientContext()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mClientContext:J

    return-wide v0
.end method

.method private commandLine()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mCommandLine:[Ljava/lang/String;

    return-object v0
.end method

.method private context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private filesToBeMapped()[Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

    return-object v0
.end method

.method private getCreationParams()Lorg/chromium/content/browser/ChildProcessCreationParams;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mCreationParams:Lorg/chromium/content/browser/ChildProcessCreationParams;

    return-object v0
.end method

.method private inSandbox()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mInSandbox:Z

    return v0
.end method
