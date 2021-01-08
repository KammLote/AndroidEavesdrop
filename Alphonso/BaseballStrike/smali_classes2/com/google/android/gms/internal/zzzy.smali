.class final Lcom/google/android/gms/internal/zzzy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzajr",
        "<",
        "Lcom/google/android/gms/internal/zzaad;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzSu:Lcom/google/android/gms/internal/zzaal;

.field private synthetic zzSv:Lcom/google/android/gms/internal/zzzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzx;Lcom/google/android/gms/internal/zzaal;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzy;->zzSv:Lcom/google/android/gms/internal/zzzx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzy;->zzSu:Lcom/google/android/gms/internal/zzaal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzaad;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzSv:Lcom/google/android/gms/internal/zzzx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->zzSu:Lcom/google/android/gms/internal/zzaal;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzzx;->zza(Lcom/google/android/gms/internal/zzaal;Lcom/google/android/gms/internal/zzaad;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->zzSv:Lcom/google/android/gms/internal/zzzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzzx;->zzgA()V

    :cond_0
    return-void
.end method
