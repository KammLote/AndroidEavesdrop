.class public final Lcom/google/android/gms/internal/du;
.super Lcom/google/android/gms/internal/do;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/do",
        "<",
        "Lcom/google/android/gms/internal/do",
        "<*>;>;"
    }
.end annotation


# static fields
.field public static final zzbLp:Lcom/google/android/gms/internal/du;

.field public static final zzbLq:Lcom/google/android/gms/internal/du;

.field public static final zzbLr:Lcom/google/android/gms/internal/du;

.field public static final zzbLs:Lcom/google/android/gms/internal/du;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzbLt:Z

.field private final zzbLu:Lcom/google/android/gms/internal/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/do",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/du;

    const-string v1, "BREAK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/du;->zzbLp:Lcom/google/android/gms/internal/du;

    new-instance v0, Lcom/google/android/gms/internal/du;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/du;->zzbLq:Lcom/google/android/gms/internal/du;

    new-instance v0, Lcom/google/android/gms/internal/du;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/du;->zzbLr:Lcom/google/android/gms/internal/du;

    new-instance v0, Lcom/google/android/gms/internal/du;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/do",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/do;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RETURN"

    iput-object v0, p0, Lcom/google/android/gms/internal/du;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/du;->zzbLt:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/du;->zzbLu:Lcom/google/android/gms/internal/do;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/do;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/du;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/du;->zzbLt:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/du;->zzbLu:Lcom/google/android/gms/internal/do;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic zzDk()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->zzbLu:Lcom/google/android/gms/internal/do;

    return-object v0
.end method

.method public final zzDp()Lcom/google/android/gms/internal/do;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->zzbLu:Lcom/google/android/gms/internal/do;

    return-object v0
.end method

.method public final zzDq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/du;->zzbLt:Z

    return v0
.end method
