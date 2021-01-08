.class final Lcom/google/android/gms/internal/zzaii;
.super Lcom/google/android/gms/internal/zzp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzp",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaD:Lcom/google/android/gms/internal/zzv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzv",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final zzaaj:Lcom/google/android/gms/internal/zzaih;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaih",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzaih;Lcom/google/android/gms/internal/zzv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaih",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzv",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzaij;

    invoke-direct {v1, p3, p2}, Lcom/google/android/gms/internal/zzaij;-><init>(Lcom/google/android/gms/internal/zzv;Lcom/google/android/gms/internal/zzaih;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzp;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzu;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaii;->zzaaj:Lcom/google/android/gms/internal/zzaih;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaii;->zzaD:Lcom/google/android/gms/internal/zzv;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaii;)Lcom/google/android/gms/internal/zzaih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaii;->zzaaj:Lcom/google/android/gms/internal/zzaih;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaii;)Lcom/google/android/gms/internal/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaii;->zzaD:Lcom/google/android/gms/internal/zzv;

    return-object v0
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzn;)Lcom/google/android/gms/internal/zzt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzn;",
            ")",
            "Lcom/google/android/gms/internal/zzt",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzn;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzam;->zzb(Lcom/google/android/gms/internal/zzn;)Lcom/google/android/gms/internal/zzc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzc;)Lcom/google/android/gms/internal/zzt;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/io/InputStream;

    new-instance v0, Lcom/google/android/gms/internal/zzaik;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaik;-><init>(Lcom/google/android/gms/internal/zzaii;Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzags;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzajl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzail;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzail;-><init>(Lcom/google/android/gms/internal/zzaii;Lcom/google/android/gms/internal/zzajl;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzajl;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method
