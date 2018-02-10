.class public final enum Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressTextVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

.field public static final enum Invisible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

.field public static final enum Visible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 514
    new-instance v0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    const-string v1, "Visible"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->Visible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    new-instance v0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    const-string v1, "Invisible"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->Invisible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    .line 513
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    sget-object v1, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->Visible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->Invisible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->$VALUES:[Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 513
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 513
    const-class v0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->$VALUES:[Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    invoke-virtual {v0}, [Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    return-object v0
.end method
