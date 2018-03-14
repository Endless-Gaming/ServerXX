#include <a_npc>
#define RECORDING "DMVBot"

main()
{
}

public OnRecordingPlaybackEnd()
{
	StartRecordingPlayback(2, RECORDING);
}

public OnNPCSpawn()
{
	StartRecordingPlayback(2, RECORDING);
}
